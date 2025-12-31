import 'dart:async';
import 'dart:convert';

import 'package:file/file.dart';
import 'package:archive/archive.dart';

/// A utility to write a Zip file to an [IOSink] (e.g. a file opened for writing)
/// working with `package:file` entities.
class ZipPackageWriter {
  final IOSink _rawOutput;
  int _bytesWritten = 0;
  final List<_ZipEntry> _entries = [];

  ZipPackageWriter(this._rawOutput);

  Future<void> addFile(File file, String filename) async {
    final localHeaderOffset = _bytesWritten;

    // 1. Calculate CRC / Size (Read pass 1)
    final stat = await file.stat();
    final lastMod = stat.modified;
    int uncompressedSize = 0;
    int crc = 0;

    // For STORE method
    final Crc32 crc32 = Crc32();
    await for (final chunk in file.openRead()) {
      uncompressedSize += chunk.length;
      crc32.add(chunk);
    }
    crc = crc32.hash;

    const compressionMethod = 0; // STORE
    final compressedSize = uncompressedSize;

    // 2. Write Local Header
    final filenameBytes = utf8.encode(filename);

    _write32(0x04034b50); // Signature
    _write16(20); // Version
    _write16(0); // Flags
    _write16(compressionMethod);
    _write16(_dateToZipTime(lastMod));
    _write16(_dateToZipDate(lastMod));
    _write32(crc);
    _write32(compressedSize);
    _write32(uncompressedSize);
    _write16(filenameBytes.length);
    _write16(0); // Extra field len
    _writeBytes(filenameBytes);

    // 3. Write Data (Read pass 2)
    await for (final chunk in file.openRead()) {
      _writeBytes(chunk);
    }

    _entries.add(
      _ZipEntry(
        filename: filename,
        crc: crc,
        compressedSize: compressedSize,
        uncompressedSize: uncompressedSize,
        compressionMethod: compressionMethod,
        lastMod: lastMod,
        localHeaderOffset: localHeaderOffset,
      ),
    );
  }

  Future<void> close() async {
    final centralDirStart = _bytesWritten;

    for (final entry in _entries) {
      final filenameBytes = utf8.encode(entry.filename);

      _write32(0x02014b50); // Central Dir Signature
      _write16(20); // Version made by
      _write16(20); // Version needed
      _write16(0); // Flags
      _write16(entry.compressionMethod);
      _write16(_dateToZipTime(entry.lastMod));
      _write16(_dateToZipDate(entry.lastMod));
      _write32(entry.crc);
      _write32(entry.compressedSize);
      _write32(entry.uncompressedSize);
      _write16(filenameBytes.length);
      _write16(0); // Extra field len
      _write16(0); // Comment len
      _write16(0); // Disk number start
      _write16(0); // Internal file attrs
      _write32(0); // External file attrs
      _write32(entry.localHeaderOffset);
      _writeBytes(filenameBytes);
    }

    final centralDirEnd = _bytesWritten;
    final centralDirSize = centralDirEnd - centralDirStart;

    // End of Central Directory Record
    _write32(0x06054b50);
    _write16(0); // Number of this disk
    _write16(0); // Disk where central dir starts
    _write16(_entries.length); // Num entries on this disk
    _write16(_entries.length); // Total num entries
    _write32(centralDirSize);
    _write32(centralDirStart);
    _write16(0); // Comment len

    await _rawOutput.close();
  }

  void _writeBytes(List<int> bytes) {
    _rawOutput.add(bytes);
    _bytesWritten += bytes.length;
  }

  void _write16(int val) {
    _writeBytes([val & 0xff, (val >> 8) & 0xff]);
  }

  void _write32(int val) {
    _writeBytes([
      val & 0xff,
      (val >> 8) & 0xff,
      (val >> 16) & 0xff,
      (val >> 24) & 0xff,
    ]);
  }

  int _dateToZipDate(DateTime date) {
    return ((date.year - 1980) << 9) | ((date.month) << 5) | (date.day);
  }

  int _dateToZipTime(DateTime date) {
    return (date.hour << 11) | (date.minute << 5) | (date.second >> 1);
  }
}

class _ZipEntry {
  final String filename;
  final int crc;
  final int compressedSize;
  final int uncompressedSize;
  final int compressionMethod;
  final DateTime lastMod;
  final int localHeaderOffset;

  _ZipEntry({
    required this.filename,
    required this.crc,
    required this.compressedSize,
    required this.uncompressedSize,
    required this.compressionMethod,
    required this.lastMod,
    required this.localHeaderOffset,
  });
}

import 'dart:typed_data';

class MediaUtils {
  /// Returns extension (without dot) like 'png', 'jpg'.
  /// Defaults to 'bin' if unknown.
  ///
  /// Uses a basic magic number check.
  static String detectExtension(Uint8List bytes) {
    if (bytes.isEmpty) return 'bin';

    // PNG
    if (_hasHeader(bytes, [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A])) {
      return 'png';
    }
    // JPG
    if (_hasHeader(bytes, [0xFF, 0xD8, 0xFF])) {
      return 'jpg';
    }
    // GIF
    if (_hasHeader(bytes, [0x47, 0x49, 0x46, 0x38])) {
      return 'gif';
    }
    // BMP
    if (_hasHeader(bytes, [0x42, 0x4D])) {
      return 'bmp';
    }
    // WEBP - RIFF....WEBP
    if (_hasHeader(bytes, [0x52, 0x49, 0x46, 0x46]) && bytes.length > 12) {
      if (_hasHeader(bytes.sublist(8, 12), [0x57, 0x45, 0x42, 0x50])) {
        // WEBP
        return 'webp';
      }
    }

    // Quick MP4 / MOV checks (ftyp)
    // Common: 00 00 00 [14-20] 66 74 79 70 ... (ftyp)
    if (bytes.length > 12) {
      // Check for 'ftyp' at offset 4
      if (bytes[4] == 0x66 &&
          bytes[5] == 0x74 &&
          bytes[6] == 0x79 &&
          bytes[7] == 0x70) {
        return 'mp4'; // Generalizing for video
      }
    }

    return 'bin';
  }

  static bool _hasHeader(Uint8List bytes, List<int> header) {
    if (bytes.length < header.length) return false;
    for (var i = 0; i < header.length; i++) {
      if (bytes[i] != header[i]) return false;
    }
    return true;
  }

  static String getMimeType(String extension) {
    switch (extension.toLowerCase()) {
      case 'png':
        return 'image/png';
      case 'jpg':
      case 'jpeg':
        return 'image/jpeg';
      case 'gif':
        return 'image/gif';
      case 'bmp':
        return 'image/bmp';
      case 'webp':
        return 'image/webp';
      case 'mp4':
        return 'video/mp4';
      case 'mov':
        return 'video/quicktime';
      default:
        return 'application/octet-stream';
    }
  }

  static ({int width, int height})? getImageDimensions(Uint8List bytes) {
    if (bytes.isEmpty) return null;

    // PNG
    if (_hasHeader(bytes, [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A])) {
      // IHDR chunk starts at byte 12 (8 byte signature + 4 byte chunk length + 4 byte chunk type 'IHDR')
      // Actually:
      // Signature: 8 bytes
      // Chunk Length: 4 bytes (offset 8)
      // Chunk Type: 4 bytes (offset 12) - should be IHDR
      // Width: 4 bytes (offset 16)
      // Height: 4 bytes (offset 20)
      if (bytes.length >= 24 &&
          bytes[12] == 0x49 &&
          bytes[13] == 0x48 &&
          bytes[14] == 0x44 &&
          bytes[15] == 0x52) {
        final view = ByteData.view(bytes.buffer);
        final width = view.getUint32(16, Endian.big);
        final height = view.getUint32(20, Endian.big);
        return (width: width, height: height);
      }
    }

    // JPG
    if (_hasHeader(bytes, [0xFF, 0xD8])) {
      var offset = 2;
      final view = ByteData.view(bytes.buffer);
      while (offset < bytes.length) {
        // Find next marker
        while (offset < bytes.length && bytes[offset] != 0xFF) {
          offset++;
        }
        if (offset >= bytes.length - 1) break;

        final marker = bytes[offset + 1];
        offset += 2;

        // SOF0 (0xC0) or SOF2 (0xC2) usually contain dimensions
        if (marker == 0xC0 || marker == 0xC2) {
          if (offset + 7 > bytes.length) break;
          // Length: 2 bytes
          // Precision: 1 byte
          // Height: 2 bytes
          // Width: 2 bytes
          final height = view.getUint16(offset + 3, Endian.big);
          final width = view.getUint16(offset + 5, Endian.big);
          return (width: width, height: height);
        }

        // Read chunk length to skip
        if (offset + 2 > bytes.length) break;
        final length = view.getUint16(offset, Endian.big);
        offset += length;
      }
    }

    return null;
  }
}

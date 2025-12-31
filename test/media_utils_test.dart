import 'dart:typed_data';
import 'package:open_xml/src/util/media_utils.dart';
import 'package:test/test.dart';

void main() {
  group('MediaUtils', () {
    test('getImageDimensions returns null for empty bytes', () {
      expect(MediaUtils.getImageDimensions(Uint8List(0)), isNull);
    });

    test('getImageDimensions returns null for unknown format', () {
      expect(
        MediaUtils.getImageDimensions(Uint8List.fromList([1, 2, 3])),
        isNull,
      );
    });

    test('getImageDimensions parses PNG dimensions', () {
      // Minimal PNG header with IHDR
      // Signature: 89 50 4E 47 0D 0A 1A 0A
      // Chunk Length: 00 00 00 0D (13)
      // Chunk Type: 49 48 44 52 (IHDR)
      // Width: 00 00 00 64 (100)
      // Height: 00 00 00 32 (50)
      // ... rest irrelevant for current parser
      final bytes = Uint8List.fromList([
        0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A, // Sig
        0x00, 0x00, 0x00, 0x0D, // Length
        0x49, 0x48, 0x44, 0x52, // IHDR
        0x00, 0x00, 0x00, 0x64, // Width 100
        0x00, 0x00, 0x00, 0x32, // Height 50
        0x00, 0x00, 0x00, 0x00, // Bit depth etc (dummy)
      ]);
      final dims = MediaUtils.getImageDimensions(bytes);
      expect(dims, isNotNull);
      expect(dims!.width, 100);
      expect(dims.height, 50);
    });

    test('getImageDimensions parses JPG dimensions (SOF0)', () {
      // Minimal JPG structure
      // SOI: FF D8
      // App0: FF E0 00 10 ... (skip)
      // SOF0: FF C0 00 11 08 00 32 00 64 (Height 50, Width 100)
      final bytes = Uint8List.fromList([
        0xFF, 0xD8, // SOI
        0xFF, 0xE0, 0x00, 0x10, // App0 marker & length
        0x4A,
        0x46,
        0x49,
        0x46,
        0x00,
        0x01,
        0x01,
        0x01,
        0x00,
        0x48,
        0x00,
        0x48,
        0x00,
        0x00, // App0 data (14 bytes)
        0xFF, 0xC0, // SOF0
        0x00, 0x11, // Length
        0x08, // Precision
        0x00, 0x32, // Height 50
        0x00, 0x64, // Width 100
        0x03,
        0x01,
        0x22,
        0x00,
        0x02,
        0x11,
        0x01,
        0x03,
        0x11,
        0x01, // Components
      ]);
      final dims = MediaUtils.getImageDimensions(bytes);
      expect(dims, isNotNull);
      expect(dims!.width, 100);
      expect(dims.height, 50);
    });
  });
}

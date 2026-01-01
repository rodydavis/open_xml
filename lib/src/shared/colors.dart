/// Represents a color in Open XML format.
/// Typically a hex string (e.g. "FFFFFF") or a preset color name.
extension type const OpenXmlColor(String value) {
  /// Creates an OpenXmlColor from a hex string.
  /// Ensure the string is a valid 6-character hex code (e.g. "FF0000").
  factory OpenXmlColor.hex(String hex) {
    var str = hex.toUpperCase();
    if (str.startsWith('#')) {
      str = str.substring(1);
    }
    if (str.length == 8) {
      return OpenXmlColor(str.substring(2, 8));
    }
    if (str.length == 6) {
      return OpenXmlColor(str);
    }
    if (str.length == 3) {
      // Convert shorthand hex (e.g., '123') to full hex (e.g., '112233')
      return OpenXmlColor(
        '${str[0]}${str[0]}${str[1]}${str[1]}${str[2]}${str[2]}',
      );
    }
    if (str.isEmpty) return OpenXmlColor(str);
    throw ArgumentError(
      'Invalid hex color: $str. Must be 6 or 8 characters long.',
    );
  }

  /// Common colors
  static const white = OpenXmlColor('FFFFFF');
  static const black = OpenXmlColor('000000');
  static const red = OpenXmlColor('FF0000');
  static const green = OpenXmlColor('00FF00');
  static const blue = OpenXmlColor('0000FF');
}

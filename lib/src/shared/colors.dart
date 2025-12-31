/// Represents a color in Open XML format.
/// Typically a hex string (e.g. "FFFFFF") or a preset color name.
extension type const OpenXmlColor(String value) {
  /// Creates an OpenXmlColor from a hex string.
  /// Ensure the string is a valid 6-character hex code (e.g. "FF0000").
  factory OpenXmlColor.hex(String hex) = OpenXmlColor;

  /// Common colors
  static const white = OpenXmlColor('FFFFFF');
  static const black = OpenXmlColor('000000');
  static const red = OpenXmlColor('FF0000');
  static const green = OpenXmlColor('00FF00');
  static const blue = OpenXmlColor('0000FF');
}

class Comment {
  final int id;
  final String text;
  final String author;
  final String initials;
  final DateTime date;

  Comment({
    required this.id,
    required this.text,
    required this.author,
    String? initials,
    DateTime? date,
  }) : initials =
           initials ??
           author
               .split(' ')
               .map((s) => s[0])
               .join()
               .toUpperCase()
               .substring(0, 2),
       date = date ?? DateTime.now();

  // Helper for ISO 8601 formatting usually needed by XML
  String get isoDate => date.toIso8601String();
}

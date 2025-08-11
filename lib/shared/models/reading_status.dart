enum ReadingStatus {
  toRead('To Read'),
  reading('Reading'),
  completed('Completed'),
  abandoned('Abandoned');

  const ReadingStatus(this.displayName);

  final String displayName;

  String get displayNameCapitalized => displayName;

  static ReadingStatus fromString(String value) {
    return ReadingStatus.values.firstWhere(
      (status) => status.name == value,
      orElse: () => ReadingStatus.toRead,
    );
  }

  @override
  String toString() => name;
} 
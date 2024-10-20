final class Country {
  final String name;
  final String flag;

  const Country({
    required this.name,
    required this.flag,
  });

  String get compoundName => '$flag $name';
}

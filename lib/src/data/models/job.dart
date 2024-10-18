import 'team.dart';
import 'country.dart';
import 'urgency.dart';

final class Job {
  final String title;
  final Team team;
  final Set<Country> countries;
  final Urgency urgency;
  final String description;

  const Job({
    required this.title,
    required this.team,
    required this.countries,
    required this.urgency,
    required this.description,
  });

  String get formattedCountries =>
      countries.map((country) => country.name).join(' • ');

  bool get isUrgent => urgency == Urgency.urgent;
}

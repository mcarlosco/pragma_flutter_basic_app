import 'team.dart';
import 'country.dart';
import 'urgency.dart';

final class Job {
  final String title;
  final Team team;
  final Set<Country> countries;
  final Urgency urgency;

  const Job({
    required this.title,
    required this.team,
    required this.countries,
    required this.urgency,
  });

  String get formattedCountries =>
      countries.map((country) => country.name).join(' • ');

  bool get isUrgent => urgency == Urgency.urgent;
}

import 'team.dart';
import 'country.dart';
import 'urgency.dart';

final class Job {
  final String title;
  final Team team;
  final Set<Country> countries;
  final String description;
  final Urgency urgency;

  const Job({
    required this.title,
    required this.team,
    required this.countries,
    required this.description,
    required this.urgency,
  });

  bool get isUrgent => urgency == Urgency.urgent;
}

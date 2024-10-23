import 'team.dart';
import 'country.dart';
import 'urgency.dart';

final class Job implements Comparable {
  final String title;
  final Team team;
  final String description;
  final Set<Country> countries;
  final Urgency urgency;

  const Job({
    required this.title,
    required this.team,
    required this.description,
    required this.countries,
    required this.urgency,
  });

  bool get isUrgent => urgency == Urgency.urgent;

  @override
  int compareTo(other) => other is Job && other.isUrgent ? 1 : -1;
}

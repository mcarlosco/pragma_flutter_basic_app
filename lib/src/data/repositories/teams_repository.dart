import '../models/team.dart';

final class TeamsRepository {
  const TeamsRepository();

  Set<Team> get() => const {
        Team(name: 'Administrativo'),
        Team(name: 'Business Development'),
        Team(name: 'Computer Science'),
        Team(name: 'Datos'),
        Team(name: 'Diseño'),
      };
}

import '../models.dart';

final class JobsRepository {
  static final _jobs = <Job>[
    const Job(
      title: 'Desarrollador Flutter',
      team: Team(name: 'Computer Science'),
      description:
          'En Pragma estamos contratando Desarrollador Mobile Flutter para uno de '
          'nuestros equipos de alto desempeño, estamos buscando a alguien que crea '
          'profundamente en el trabajo colaborativo para la construcción de grandes '
          'aplicaciones móviles que aporten soluciones creativas, útiles y especialmente que '
          'atiendan las necesidades de los usuarios para facilitarle lo que ellos anto anhelan.',
      countries: {
        Country(name: 'Colombia', flag: '🇨🇴'),
        Country(name: 'Perú', flag: '🇵🇪'),
      },
      urgency: Urgency.urgent,
    ),
    const Job(
      title: 'Desarrollador Java',
      team: Team(name: 'Computer Science'),
      description:
          'Queremos conocer personas apasionadas por mejorar la vida de la gente. Buscamos '
          'un desarrollador Java con ganas de construir soluciones creativas para miles de '
          'usuarios en América latina y el mundo.',
      countries: {
        Country(name: 'Colombia', flag: '🇨🇴'),
        Country(name: 'Panamá', flag: '🇵🇦'),
        Country(name: 'Perú', flag: '🇵🇪'),
      },
      urgency: Urgency.normal,
    ),
  ];

  const JobsRepository();

  List<Job> get() {
    return List.unmodifiable(_jobs);
  }

  void save(Job job) {
    final index = _jobs.indexWhere((j) => j.title == job.title);

    if (index == -1) {
      _jobs.add(job);
    } else {
      _jobs[index] = job;
    }
  }

  void delete(Job job) {
    _jobs.removeWhere((j) => j.title == job.title);
  }
}

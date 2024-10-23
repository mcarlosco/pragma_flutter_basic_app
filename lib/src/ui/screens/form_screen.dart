import 'package:flutter/material.dart';

import '../../data/models.dart';
import '../../data/repositories.dart';
import '../views.dart';
import '../widgets.dart';

final class FormScreen extends StatelessWidget {
  final Job? job;

  final CountriesRepository _countriesRepository;
  final JobsRepository _jobsRepository;
  final TeamsRepository _teamsRepository;

  const FormScreen({
    super.key,
    this.job,
  })  : _countriesRepository = const CountriesRepository(),
        _jobsRepository = const JobsRepository(),
        _teamsRepository = const TeamsRepository();

  @override
  Widget build(BuildContext context) {
    return OurScreen(
      title: 'Vacante',
      child: FormView(
        teams: _teamsRepository.get(),
        countries: _countriesRepository.get(),
        onSaved: (job) {
          _jobsRepository.save(job);
          Navigator.of(context).pop(job);
        },
        job: job,
      ),
    );
  }
}

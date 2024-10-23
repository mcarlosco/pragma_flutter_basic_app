import 'dart:async';

import 'package:flutter/material.dart';

import '../../data/repositories.dart';
import '../views.dart';
import '../widgets.dart';
import 'paths.dart';

final class JobsScreen extends StatelessWidget {
  final JobsRepository _jobsRepository;

  const JobsScreen({super.key}) : _jobsRepository = const JobsRepository();

  @override
  Widget build(BuildContext context) {
    return OurScreen(
      title: 'Vacantes',
      primaryActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          unawaited(Navigator.of(context).pushNamed<void>(formScreenPath));
        },
      ),
      child: JobsView(
        _jobsRepository.get(),
        onOpened: (job) {
          unawaited(Navigator.of(context).pushNamed<void>(
            detailsScreenPath,
            arguments: job,
          ));
        },
      ),
    );
  }
}

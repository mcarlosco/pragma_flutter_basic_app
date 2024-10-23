import 'package:flutter/material.dart';

import '../../data/models.dart';
import '../../data/repositories.dart';
import '../views.dart';
import '../widgets.dart';
import 'paths.dart';

final class DetailsScreen extends StatelessWidget {
  final Job job;

  final JobsRepository _jobsRepository;

  const DetailsScreen(
    this.job, {
    super.key,
  }) : _jobsRepository = const JobsRepository();

  @override
  Widget build(BuildContext context) {
    return OurScreen(
      title: 'Detalles',
      primaryActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamed<Job>(
                formScreenPath,
                arguments: job,
              )
              .then((_) {});
        },
        child: const Icon(Icons.edit),
      ),
      child: SingleChildScrollView(
        child: DetailsView(
          job,
          onDeleted: () {
            _jobsRepository.delete(job);
            Navigator.of(context).pop<void>();
          },
        ),
      ),
    );
  }
}

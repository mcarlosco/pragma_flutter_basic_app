import 'package:flutter/material.dart';

import '../../data/repositories.dart';
import '../views.dart';
import '../widgets.dart';
import 'paths.dart';

final class JobsScreen extends StatefulWidget {
  final JobsRepository _jobsRepository;

  const JobsScreen({super.key}) : _jobsRepository = const JobsRepository();

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  Widget build(BuildContext context) {
    return OurScreen(
      title: 'Vacantes',
      primaryActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed(formScreenPath).then((_) {
            setState(() {});
          });
        },
      ),
      child: JobsView(
        widget._jobsRepository.get(),
        onOpened: (job) {
          Navigator.of(context)
              .pushNamed(detailsScreenPath, arguments: job)
              .then((_) {
            setState(() {});
          });
        },
      ),
    );
  }
}

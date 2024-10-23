import 'dart:async';

import 'package:flutter/material.dart';

import '../../data/models.dart';
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

final class _JobsScreenState extends State<JobsScreen> {
  @override
  Widget build(BuildContext context) {
    return OurScreen(
      title: 'Vacantes',
      primaryActionButton: FloatingActionButton(
        onPressed: _onAddButtonPressed,
        child: const Icon(Icons.add),
      ),
      child: JobsView(
        widget._jobsRepository.get(),
        onCardOpened: _onCardOpened,
      ),
    );
  }

  void _onAddButtonPressed() {
    unawaited(Navigator.of(context).pushNamed(formScreenPath).then<void>((_) {
      setState(() {});
    }));
  }

  void _onCardOpened(Job job) {
    unawaited(Navigator.of(context)
        .pushNamed(detailsScreenPath, arguments: job)
        .then<void>((_) {
      setState(() {});
    }));
  }
}

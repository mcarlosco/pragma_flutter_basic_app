import 'dart:async';

import 'package:flutter/material.dart';

import '../../data/models.dart';
import '../../data/repositories.dart';
import '../views.dart';
import '../widgets.dart';
import 'paths.dart';

final class DetailsScreen extends StatefulWidget {
  final Job job;

  final JobsRepository _jobsRepository;

  const DetailsScreen(
    this.job, {
    super.key,
  }) : _jobsRepository = const JobsRepository();

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

final class _DetailsScreenState extends State<DetailsScreen> {
  Job? _j;

  Job get _job => _j ?? widget.job;

  @override
  Widget build(BuildContext context) {
    return OurScreen(
      title: 'Detalles',
      primaryActionButton: FloatingActionButton(
        onPressed: _onEditButtonPressed,
        child: const Icon(Icons.edit),
      ),
      child: DetailsView(
        _job,
        onDeleted: _onDeleted,
      ),
    );
  }

  void _onEditButtonPressed() {
    unawaited(
      Navigator.of(context)
          .pushNamed(formScreenPath, arguments: _job)
          .then<void>((job) {
        setState(() {
          if (job is Job) {
            _j = job;
          }
        });
      }),
    );
  }

  void _onDeleted() {
    widget._jobsRepository.delete(_job);
    Navigator.of(context).pop<void>();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Vacante eliminada')),
    );
  }
}

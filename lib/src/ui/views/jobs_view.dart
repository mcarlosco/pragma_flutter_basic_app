import 'package:flutter/material.dart';
import 'package:pragma_flutter_basic_app/src/data/models/urgency.dart';

import '../widgets/our_card.dart';

import '../../data/models/job.dart';

final class JobsView extends StatelessWidget {
  final List<Job> jobs;

  const JobsView(
    this.jobs, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: jobs
            .map(
              (job) => OurCard.outlined(
                headline: job.title,
                subhead: job.team.name,
                supportingText:
                    job.countries.map((country) => country.name).join(' • '),
                buttonText: 'Ver detalles',
                onButtonPressed: () {},
                headlineBolded: job.urgency == Urgency.urgent,
              ),
            )
            .toList());
  }
}

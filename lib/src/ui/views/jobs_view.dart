import 'package:flutter/material.dart';

import '../../data/models.dart';
import '../widgets.dart';

final class JobsView extends StatelessWidget {
  final List<Job> jobs;

  final void Function(Job job) onOpened;

  const JobsView(
    this.jobs, {
    super.key,
    required this.onOpened,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const OurImage.asset('assets/images/our_happy_team.webp'),
        const OurSpacer.x2(),
        const Text(
          'Es Pragma. Es buena compañía.',
          textAlign: TextAlign.center,
        ),
        const OurSpacer.x2(),
        for (final job in jobs)
          OurCard.outlined(
            headline: job.title,
            subhead: job.team.name,
            supportingText:
                job.countries.map((country) => country.name).join(' • '),
            buttonText: 'Ver detalles',
            onButtonPressed: () {
              onOpened(job);
            },
            headlineBolded: job.isUrgent,
          ),
      ],
    );
  }
}

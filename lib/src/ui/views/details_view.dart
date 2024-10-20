import 'package:flutter/material.dart';

import '../../data/models/job.dart';

final class DetailsView extends StatelessWidget {
  final Job job;

  const DetailsView(
    this.job, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          job.title,
          style: textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: .25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            job.team.name,
            style: textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: job.countries
                .map((country) => Padding(
                      padding: const EdgeInsets.only(bottom: 2.5),
                      child: Text(
                        country.compoundName,
                        style: textTheme.bodySmall,
                      ),
                    ))
                .toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(job.description),
        ),
      ],
    );
  }
}

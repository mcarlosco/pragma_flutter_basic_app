import 'package:flutter/material.dart';

import '../views/details_view.dart';
import '../widgets/our_screen.dart';

import '../../data/models/job.dart';

final class DetailsScreen extends StatelessWidget {
  final Job job;

  const DetailsScreen(
    this.job, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OurScreen(
      title: 'Detalles',
      child: DetailsView(job),
    );
  }
}

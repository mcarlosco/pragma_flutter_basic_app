import 'package:flutter/material.dart';

import './our_app_bar.dart';

final class OurScreen extends StatelessWidget {
  final String title;
  final Widget child;

  const OurScreen({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const OurAppBar(
        title: 'Vacantes',
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: child,
      ),
    );
  }
}

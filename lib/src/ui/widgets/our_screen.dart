import 'package:flutter/material.dart';

import 'our_app_bar.dart';

final class OurScreen extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? primaryActionButton;

  const OurScreen({
    super.key,
    required this.title,
    required this.child,
    this.primaryActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OurAppBar(
        title: title,
      ),
      body: child,
      floatingActionButton: primaryActionButton,
    );
  }
}

import 'package:flutter/material.dart';

final class OurSpacer extends StatelessWidget {
  final int factor;

  const OurSpacer.x1({Key? key}) : this._(1, key: key);
  const OurSpacer.x2({Key? key}) : this._(2, key: key);
  const OurSpacer.x3({Key? key}) : this._(3, key: key);
  const OurSpacer.x4({Key? key}) : this._(4, key: key);

  const OurSpacer._(
    this.factor, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: (5 * factor).toDouble());
  }
}

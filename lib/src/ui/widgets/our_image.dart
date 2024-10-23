import 'package:flutter/material.dart';

final class OurImage extends StatelessWidget {
  final String name;

  const OurImage.asset(
    this.name, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(name);
  }
}

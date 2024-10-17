import 'package:flutter/material.dart';

final class OurAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const OurAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: colorScheme.inversePrimary,
        ),
      ),
      backgroundColor: colorScheme.primary,
    );
  }
}

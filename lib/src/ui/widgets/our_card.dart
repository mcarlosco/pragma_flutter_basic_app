import 'package:flutter/material.dart';

final class OurCard extends StatelessWidget {
  final String? headline;
  final String? subhead;
  final String? supportingText;
  final String? buttonText;
  final VoidCallback? onButtonPressed;
  final bool headlineBolded;

  const OurCard.outlined({
    super.key,
    this.headline,
    this.subhead,
    this.supportingText,
    this.buttonText,
    this.onButtonPressed,
    this.headlineBolded = false,
  });

  bool get _hasButton => buttonText != null && onButtonPressed != null;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card.outlined(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (headline != null)
              Text(
                headline!,
                style: headlineBolded
                    ? textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        letterSpacing: .25,
                      )
                    : textTheme.titleLarge,
              ),
            if (subhead != null)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  subhead!,
                  style: textTheme.titleMedium,
                ),
              ),
            if (supportingText != null)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  supportingText!,
                  style: textTheme.bodySmall,
                ),
              ),
            if (_hasButton)
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: FilledButton.tonal(
                  onPressed: onButtonPressed!,
                  child: Text(buttonText!),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

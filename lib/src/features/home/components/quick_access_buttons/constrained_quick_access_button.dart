import 'package:bento_coding_challenge/src/widgets/quick_access_button.dart';
import 'package:flutter/material.dart';

class ConstrainedQuickAccessButton extends StatelessWidget {
  const ConstrainedQuickAccessButton({
    super.key,
    required this.label,
    required this.image,
    required this.onTap,
    required this.maxWidth,
  });

  final String label;
  final Widget image;
  final VoidCallback onTap;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
      ),
      child: QuickAccessButton(
        label: label,
        image: image,
        onTap: onTap,
      ),
    );
  }
}

import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:flutter/material.dart';

class QuickAccessButton extends StatelessWidget {
  final String label;
  final Widget? image;
  final VoidCallback onTap;
  final EdgeInsetsGeometry labelPadding;

  const QuickAccessButton({
    super.key,
    required this.label,
    this.image,
    required this.onTap,
    this.labelPadding = const EdgeInsets.all(Sizes.p12),
  });

  @override
  Widget build(BuildContext context) {
    return _RoundedButton(
      onTap: onTap,
      child: _QuickAccessButtonContent(
        label: label,
        image: image,
        labelPadding: labelPadding,
      ),
    );
  }
}

class _RoundedButton extends StatelessWidget {
  const _RoundedButton({this.child, required this.onTap});
  final VoidCallback onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Container(
          decoration: BoxDecoration(
            color: context.theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(Sizes.p12),
          ),
          child: child,
        ),
      ),
    );
  }
}

class _QuickAccessButtonContent extends StatelessWidget {
  const _QuickAccessButtonContent({
    required this.label,
    this.image,
    this.labelPadding = const EdgeInsets.all(Sizes.p12),
  });

  final String label;
  final Widget? image;
  final EdgeInsetsGeometry labelPadding;

  @override
  Widget build(BuildContext context) {
    final image = this.image;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: Center(
          child:
              Padding(padding: labelPadding, child: _LabelText(label: label)),
        )),
        if (image != null) ...[
          Flexible(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              heightFactor: 0.8,
              child: image,
            ),
          )
        ],
      ],
    );
  }
}

class _LabelText extends StatelessWidget {
  const _LabelText({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
        textAlign: TextAlign.start,
        maxLines: 2,
        style: Theme.of(context).textTheme.titleMedium);
  }
}

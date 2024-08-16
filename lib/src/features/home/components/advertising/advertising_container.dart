import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AdvertisingContainer extends StatelessWidget {
  const AdvertisingContainer({
    super.key,
    this.header,
    this.ctaButton,
    this.image,
    this.backgroundColor,
  });
  final Color? backgroundColor;
  final Widget? header;
  // Call-to-action button
  final Widget? ctaButton;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(Sizes.p12),
        ),
        child: _AdvertisingContainerContent(
          header: header,
          ctaButton: ctaButton,
          image: image,
        ),
      ),
    );
  }
}

class _AdvertisingContainerContent extends StatelessWidget {
  const _AdvertisingContainerContent({
    this.header,
    this.ctaButton,
    this.image,
  });

  final Widget? header;
  // Call-to-action button
  final Widget? ctaButton;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    final header = this.header;
    final ctaButton = this.ctaButton;
    final image = this.image;
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              top: Sizes.p16,
              bottom: Sizes.p16,
              left: Sizes.p16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                header ?? const SizedBox.shrink(),
                if (ctaButton != null) ctaButton,
              ],
            ),
          ),
        ),
        if (image != null) Expanded(child: image),
      ],
    );
  }
}

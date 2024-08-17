import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/utils/context_theme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AdvertisingPageView extends StatefulWidget {
  const AdvertisingPageView(
      {super.key,
      required this.advertisings,
      this.padding = const EdgeInsets.symmetric(horizontal: Sizes.p16)});
  final List<Widget> advertisings;
  final EdgeInsetsGeometry padding;

  @override
  State<AdvertisingPageView> createState() => _AdvertisingPageViewState();
}

class _AdvertisingPageViewState extends State<AdvertisingPageView> {
  late final PageController _pageViewController;

  @override
  void initState() {
    _pageViewController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  List<Widget> get _advertisings => widget.advertisings;

  @override
  Widget build(BuildContext context) {
    final advertisingsLength = _advertisings.length;
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 2,
          child: PageView.builder(
            controller: _pageViewController,
            itemCount: advertisingsLength,
            itemBuilder: (_, index) {
              final advertising = _advertisings[index];
              return Padding(padding: widget.padding, child: advertising);
            },
          ),
        ),
        gapH8,
        _AdvertisingPageViewIndicator(
          pageViewController: _pageViewController,
          advertisingsLength: advertisingsLength,
        )
      ],
    );
  }
}

class _AdvertisingPageViewIndicator extends StatelessWidget {
  const _AdvertisingPageViewIndicator({
    required PageController pageViewController,
    required this.advertisingsLength,
  }) : _pageViewController = pageViewController;

  final PageController _pageViewController;
  final int advertisingsLength;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: _pageViewController,
        count: advertisingsLength,
        effect: ExpandingDotsEffect(
          dotWidth: Sizes.p8,
          dotHeight: Sizes.p8,
          activeDotColor: context.theme.colorScheme.secondary,
        ),
        onDotClicked: (index) {
          _pageViewController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        });
  }
}

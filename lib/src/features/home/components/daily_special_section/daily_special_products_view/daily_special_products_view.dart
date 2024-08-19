import 'package:bento_coding_challenge/src/constants/app_sizes.dart';
import 'package:bento_coding_challenge/src/features/home/components/daily_special_section/daily_special_products_view/state_management/daily_special_products_cubit.dart';
import 'package:bento_coding_challenge/src/models/models.dart';
import 'package:bento_coding_challenge/src/widgets/app_animated_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'daily_special_products_grid_view/daily_special_products_grid_view.dart';

class DailySpecialProductsView extends StatelessWidget {
  const DailySpecialProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DailySpecialProductsCubit, DailySpecialProductsState>(
      builder: (context, state) {
        return switch (state) {
          DailySpecialProductsLoading _ =>
            const _DailySpecialProductsLoadingView(),
          DailySpecialProductsError errorState =>
            _DailySpecialProductsErrorView(errorState.exception),
          DailySpecialProductsLoaded loadedState =>
            DailySpecialProductsGridView(
              productSummaryList: loadedState.productSummaryList,
            )
        };
      },
    );
  }
}

class _DailySpecialProductsLoadingView extends StatelessWidget {
  const _DailySpecialProductsLoadingView();
  // final

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: FractionallySizedBox(
      widthFactor: 0.4,
      child: AppAnimatedLoadingIndicator(),
    ));
  }
}

class _DailySpecialProductsErrorView extends StatelessWidget {
  const _DailySpecialProductsErrorView(this.exception);
  final DomainException exception;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(FontAwesomeIcons.circleXmark, color: Colors.red),
          gapH12,
          Text(
            exception.getMessage(context),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

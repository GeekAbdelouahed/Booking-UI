import 'package:flutter/material.dart';

import '../../../../../dummy_data/hotels.dart';
import '../../../../utils/styles.dart';
import '../../../components/deal.dart';

class BestDealsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, index) => index == 0 // Header
              ? Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    bottom: 20,
                  ),
                  child: Text(
                    'Best Deals',
                    style: AppStyles.titleStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                )
              : FittedBox(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      bottom: index < AppHotels.data.length ? 10 : 0,
                    ),
                    child: DealItemWidget(
                      hotel: AppHotels.data[index - 1],
                    ),
                  ),
                ),
          childCount: AppHotels.data.length + 1,
        ),
      );
}

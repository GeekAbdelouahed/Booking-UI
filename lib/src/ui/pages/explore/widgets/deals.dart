import 'package:flutter/material.dart';

import '../../../../../dummy_data/deals.dart';
import '../../../../utils/styles.dart';
import '../../../components/deal.dart';

class BestDealsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, index) => index == 0 // Header
              ? Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: Text(
                    'Best Deals',
                    style: AppStyles.titleStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                )
              : FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    child: DealItemWidget(
                      hotel: AppDeals.data[index - 1],
                    ),
                  ),
                ),
          childCount: AppDeals.data.length + 1,
        ),
      );
}

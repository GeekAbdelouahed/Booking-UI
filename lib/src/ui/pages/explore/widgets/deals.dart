import 'package:flutter/material.dart';

import '../../../../../dummy_data/deals.dart';
import '../../../../utils/styles.dart';
import '../../../components/deal.dart';

class BestDealsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Best Deals',
              style: AppStyles.titleStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 160,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 30 , vertical: 15),
              itemCount: AppDeals.data.length,
              itemBuilder: (_, index) => DealItemWidget(
                hotel: AppDeals.data[index],
              ),
              separatorBuilder: (_, __) => const SizedBox(
                width: 20,
              ),
            ),
          ),
        ],
      );
}

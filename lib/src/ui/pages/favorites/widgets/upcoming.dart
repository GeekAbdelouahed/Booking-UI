import 'package:flutter/material.dart';

import '../../../../../dummy_data/deals.dart';
import '../../../components/deal.dart';

class UpcomingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView.separated(
        padding: const EdgeInsets.all(30),
        itemCount: AppDeals.data.length,
        itemBuilder: (_, index) => FittedBox(
          child: DealItemWidget(
            hotel: AppDeals.data[index],
          ),
        ),
        separatorBuilder: (_, __) => const SizedBox(
          height: 20,
        ),
      );
}

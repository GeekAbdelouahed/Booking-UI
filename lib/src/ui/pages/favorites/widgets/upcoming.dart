import 'package:flutter/material.dart';

import '../../../../../dummy_data/deals.dart';
import '../../../components/deal.dart';

class UpcomingWidget extends StatefulWidget {
  @override
  _UpcomingWidgetState createState() => _UpcomingWidgetState();
}

class _UpcomingWidgetState extends State<UpcomingWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.separated(
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

  @override
  bool get wantKeepAlive => true;
}

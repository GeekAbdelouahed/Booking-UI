import 'package:flutter/material.dart';

import '../../../../../dummy_data/deals.dart';
import '../../../components/my_trip.dart';

class FinishedWidget extends StatefulWidget {
  @override
  _FinishedWidgetState createState() => _FinishedWidgetState();
}

class _FinishedWidgetState extends State<FinishedWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.separated(
      padding: const EdgeInsets.all(30),
      itemCount: AppDeals.data.length,
      itemBuilder: (_, index) => MyTripItemWidget(
        hotel: AppDeals.data[index],
      ),
      separatorBuilder: (_, __) => const SizedBox(
        height: 20,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

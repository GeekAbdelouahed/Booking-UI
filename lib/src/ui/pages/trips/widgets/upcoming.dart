import 'package:flutter/material.dart';

import '../../../../../dummy_data/hotels.dart';
import '../../../components/my_trip.dart';

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
      itemCount: AppHotels.data.length,
      itemBuilder: (_, index) => MyTripItemWidget(
        hotel: AppHotels.data[index],
      ),
      separatorBuilder: (_, __) => const SizedBox(
        height: 20,
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

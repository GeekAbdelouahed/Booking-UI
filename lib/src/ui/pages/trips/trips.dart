import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import 'widgets/favorites.dart';
import 'widgets/finished.dart';
import 'widgets/tab_bar.dart';
import 'widgets/upcoming.dart';

class TripsPage extends StatefulWidget {
  @override
  _TripsPageState createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Text(
            'My Trips',
            style: AppStyles.titleStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TabBarWidget(
            controller: _controller,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              UpcomingWidget(),
              FinishedWidget(),
              FavoritesWidget(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

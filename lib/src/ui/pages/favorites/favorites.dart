import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import 'widgets/favorites.dart';
import 'widgets/finished.dart';
import 'widgets/tab_bar.dart';
import 'widgets/upcoming.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 3, initialIndex: 2);
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              'Favorites',
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

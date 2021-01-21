import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final TabController controller;

  const TabBarWidget({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(100),
        ),
        child: TabBar(
          controller: controller,
          isScrollable: true,
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.grey[500],
          labelColor: Theme.of(context).primaryColor,
          tabs: [
            Tab(
              text: 'Upcoming',
            ),
            Tab(
              text: 'Finished',
            ),
            Tab(
              text: 'Favorites',
            ),
          ],
        ),
      );
}

import 'package:flutter/material.dart';

import '../explore/explore.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: [
            ExplorePage(),
            ExplorePage(),
            ExplorePage(),
          ],
        ),
        bottomNavigationBar: Material(
          elevation: 10,
          child: TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.grey[500],
            labelColor: Theme.of(context).primaryColor,
            tabs: [
              Tab(
                iconMargin: const EdgeInsets.all(5),
                icon: Icon(
                  Icons.search,
                  size: 25,
                ),
                text: 'Explore',
              ),
              Tab(
                iconMargin: const EdgeInsets.all(5),
                icon: Icon(
                  Icons.favorite_border,
                  size: 25,
                ),
                text: 'Trips',
              ),
              Tab(
                iconMargin: const EdgeInsets.all(5),
                icon: Icon(
                  Icons.person_outline,
                  size: 25,
                ),
                text: 'Profile',
              )
            ],
          ),
        ),
      );
}

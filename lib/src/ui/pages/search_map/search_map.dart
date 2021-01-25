import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../dummy_data/hotels.dart';
import '../../../utils/styles.dart';
import '../../components/filter.dart';
import '../../components/search.dart';
import 'widgets/map.dart';

class SearchMapPage extends StatefulWidget {
  @override
  _SearchMapPageState createState() => _SearchMapPageState();
}

class _SearchMapPageState extends State<SearchMapPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (_) => AppFilterWidget(),
                  ),
                );
              },
              tooltip: 'Filters',
              icon: Icon(
                Icons.filter_list,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Text(
                  'Search',
                  style: AppStyles.titleStyle,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.grey[100],
                padding: const EdgeInsets.all(30),
                child: AppSearchWidget(),
              ),
            ),
            SliverFillRemaining(
              child: MapWidget(
                hotels: AppHotels.data,
              ),
            ),
          ],
        ),
      );
}

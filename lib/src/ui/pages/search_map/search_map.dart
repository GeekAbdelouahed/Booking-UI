import 'package:flutter/material.dart';

import '../../../../dummy_data/hotels.dart';
import '../../../utils/styles.dart';
import 'widgets/map.dart';
import 'widgets/search.dart';

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
              onPressed: () {},
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
                child: SearchWidget(),
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

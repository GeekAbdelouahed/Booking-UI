import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../dummy_data/hotels.dart';
import '../../../utils/styles.dart';
import '../../components/my_trip.dart';
import 'widgets/search.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.mapMarkerAlt,
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
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Row(
                  children: [
                    Text('530 hotels found'),
                    const Spacer(),
                    Text('Filters'),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.filter_list,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: index == 0 ? 0 : 10,
                    bottom: index == AppHotels.data.length - 1 ? 10 : 0,
                  ),
                  child: MyTripItemWidget(
                    hotel: AppHotels.data[index],
                  ),
                ),
                childCount: AppHotels.data.length,
              ),
            ),
          ],
        ),
      );
}

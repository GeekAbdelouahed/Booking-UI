import 'package:flutter/material.dart';

import 'widgets/ads.dart';
import 'widgets/deals.dart';
import 'widgets/destinations.dart';
import 'widgets/search.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .7,
            child: Stack(
              children: [
                Positioned.fill(
                  child: SliderAdsWidget(),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  right: 30,
                  child: SearchWidget(),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          sliver: SliverToBoxAdapter(
            child: PopularDestinationsWidget(),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(bottom: 30),
          sliver: BestDealsWidget(),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

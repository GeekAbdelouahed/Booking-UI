import 'package:flutter/material.dart';

import '../../../../../dummy_data/ads.dart';
import '../../../components/ads.dart';
import '../../../components/indicator.dart';

class SliderAdsWidget extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Positioned.fill(
            child: PageView(
              controller: _controller,
              children: AppAds.data
                  .map((hotel) => AdsItemWidget(hotel: hotel))
                  .toList(),
            ),
          ),
          PositionedDirectional(
            end: MediaQuery.of(context).size.width * .1,
            bottom: MediaQuery.of(context).size.width * .1,
            child: AppIndicator(
              controller: _controller,
              count: AppAds.data.length,
            ),
          )
        ],
      );
}

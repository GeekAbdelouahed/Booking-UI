import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../dummy_data/ads.dart';
import '../../../components/ads.dart';

class SliderAdsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * .5,
          viewportFraction: 0.85,
          enlargeCenterPage: true,
        ),
        items: AppAds.data.map((hotel) => AdsItemWidget(hotel: hotel)).toList(),
      );
}

import 'package:flutter/material.dart';

import '../../../entities/hotel.dart';
import 'widgets/app_bar.dart';
import 'widgets/information.dart';
import 'widgets/rating.dart';

class HotelPage extends StatelessWidget {
  final Hotel hotel;

  const HotelPage({Key key, @required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            AppBarWidget(
              hotel: hotel,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: InformationWidget(
                  hotel: hotel,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  bottom: 20,
                ),
                child: RatingWidget(
                  rating: hotel.rating,
                ),
              ),
            ),
          ],
        ),
      );
}

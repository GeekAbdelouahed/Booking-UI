import 'package:flutter/material.dart';

import '../../../entities/hotel.dart';
import '../../../routes/routes.dart';
import '../../components/buttons/rounded_button.dart';
import 'widgets/app_bar.dart';
import 'widgets/information.dart';
import 'widgets/map.dart';
import 'widgets/rating.dart';
import 'widgets/reviews.dart';

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
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  bottom: 20,
                ),
                child: ReviewsWidget(
                  reviews: hotel.reviews,
                  onViewAll: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.reviews,
                      arguments: hotel,
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: MapWidget(
                  latitude: hotel.address.latitude,
                  longitude: hotel.address.longitude,
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
                child: AppRoundedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.book,
                      arguments: hotel,
                    );
                  },
                  title: 'Book now',
                ),
              ),
            ),
          ],
        ),
      );
}

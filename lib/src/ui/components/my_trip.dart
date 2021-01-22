import 'package:flutter/material.dart';

import '../../entities/hotel.dart';
import '../../routes/routes.dart';
import '../../utils/styles.dart';
import 'buttons/favorite.dart';
import 'image.dart';
import 'rating.dart';

class MyTripItemWidget extends StatelessWidget {
  final Hotel hotel;

  const MyTripItemWidget({Key key, @required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.width * .8,
        child: Stack(
          children: [
            Positioned.fill(
              child: Card(
                elevation: 10,
                shadowColor: Colors.black.withOpacity(.2),
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.hotel,
                      arguments: hotel,
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: AppImage(
                          url: hotel.photos[0],
                          width: double.infinity,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    hotel.title,
                                    style: AppStyles.titleStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${hotel.address.city.name}, ${hotel.address.country.name}',
                                    style: AppStyles.subtitleStyle.copyWith(
                                      color: Colors.grey[400],
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_pin,
                                        color: Theme.of(context).primaryColor,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '2 Km to city',
                                        style: AppStyles.subtitleStyle.copyWith(
                                          color: Colors.grey[400],
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      AppRatingBar(
                                        initialRating:
                                            hotel.rating.overallRating,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '80 Reviews',
                                        style: AppStyles.subtitleStyle.copyWith(
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '\$${hotel.price}',
                                  style: AppStyles.titleStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(
                                  '/per night',
                                  style: AppStyles.subtitleStyle.copyWith(
                                    color: Colors.grey[500],
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            PositionedDirectional(
              top: 20,
              end: 20,
              child: AppFavoriteButton(),
            ),
          ],
        ),
      );
}

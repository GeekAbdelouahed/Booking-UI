import 'package:flutter/material.dart';

import '../../entities/hotel.dart';
import '../../routes/routes.dart';
import '../../utils/styles.dart';
import 'image.dart';
import 'rating.dart';

class DealItemWidget extends StatelessWidget {
  final Hotel hotel;

  const DealItemWidget({Key key, @required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 150,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: AppImage(
                    url: hotel.photos[0],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
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
                        '${hotel.city}, ${hotel.country}',
                        style: AppStyles.subtitleStyle.copyWith(
                          color: Colors.grey[400],
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AppRatingBar(
                                initialRating: hotel.rating.overallRating,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 30,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

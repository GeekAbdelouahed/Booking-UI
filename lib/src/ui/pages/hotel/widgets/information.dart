import 'package:flutter/material.dart';

import '../../../../entities/hotel.dart';
import '../../../../utils/styles.dart';

class InformationWidget extends StatelessWidget {
  final Hotel hotel;

  const InformationWidget({Key key, @required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotel.title,
                        style: AppStyles.titleStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '${hotel.city}, ${hotel.country}',
                            style: AppStyles.subtitleStyle.copyWith(
                              color: Colors.grey[500],
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
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
                              color: Colors.grey[500],
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
          Divider(
            height: 50,
            color: Colors.grey[400],
          ),
          Text(
            'Summery',
            style: AppStyles.subtitleStyle.copyWith(
              color: Colors.grey[500],
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hotel.description,
            style: const TextStyle(
              height: 1.5,
            ),
          ),
        ],
      );
}

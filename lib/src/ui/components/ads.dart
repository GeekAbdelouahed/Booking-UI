import 'package:flutter/material.dart';

import '../../entities/hotel.dart';
import '../../routes/routes.dart';
import '../../utils/styles.dart';
import 'buttons/rounded_button.dart';
import 'image.dart';

class AdsItemWidget extends StatelessWidget {
  final Hotel hotel;

  const AdsItemWidget({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Positioned.fill(
              child: AppImage(
                url: hotel.photos[0],
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black45,
              ),
            ),
            PositionedDirectional(
              start: MediaQuery.of(context).size.width * .1,
              bottom: MediaQuery.of(context).size.width * .1,
              end: MediaQuery.of(context).size.width * .3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.title,
                    style: AppStyles.titleStyle.copyWith(
                      color: Colors.white,
                      fontSize: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    hotel.subtitle,
                    style: AppStyles.subtitleStyle.copyWith(
                      color: Colors.grey[300],
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppRoundedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        AppRoutes.hotel,
                        arguments: hotel,
                      );
                    },
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 5,
                    ),
                    title: 'View Hotel',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

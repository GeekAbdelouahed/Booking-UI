import 'package:flutter/material.dart';

import '../../entities/hotel.dart';
import '../../utils/styles.dart';
import 'image.dart';

class AdsItemWidget extends StatelessWidget {
  final Hotel hotel;

  const AdsItemWidget({Key key, @required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
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
                start: 35,
                bottom: 35,
                end: 35,
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
                      height: 15,
                    ),
                    Text(
                      hotel.subtitle ?? ' ',
                      style: AppStyles.subtitleStyle.copyWith(
                        color: Colors.grey[300],
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

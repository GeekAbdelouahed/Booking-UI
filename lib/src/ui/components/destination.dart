import 'package:flutter/material.dart';

import '../../entities/country.dart';
import '../../utils/styles.dart';
import 'image.dart';

class DestinationItemWidget extends StatelessWidget {
  final Country country;

  const DestinationItemWidget({Key key, @required this.country})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.all(0),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          width: 150,
          child: Stack(
            children: [
              Positioned.fill(
                child: AppImage(
                  url: country.photo,
                ),
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black45,
                ),
              ),
              PositionedDirectional(
                start: 20,
                bottom: 20,
                child: Text(
                  country.name,
                  style: AppStyles.titleStyle.copyWith(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

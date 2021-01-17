import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/styles.dart';

class PageWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const PageWidget({
    Key key,
    @required this.image,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: SvgPicture.asset(
              'assets/images/$image',
              width: double.infinity,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppStyles.titleStyle,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: AppStyles.subtitleStyle.copyWith(
              color: Colors.grey[500],
            ),
          ),
        ],
      );
}

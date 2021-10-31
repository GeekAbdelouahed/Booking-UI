import 'dart:ui';

import 'package:flutter/material.dart';

import '../../entities/review.dart';
import '../../utils/styles.dart';
import 'image.dart';
import 'rating.dart';

class AppReviewWidget extends StatelessWidget {
  final Review review;

  const AppReviewWidget({Key? key, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: AppImage(
              url: review.user?.avatar ?? '',
              height: 40,
              width: 40,
              radius: 100,
            ),
            title: Text(
              '${review.user?.firstName} ${review.user!.lastName}',
              style: AppStyles.titleStyle.copyWith(
                fontSize: 15,
              ),
            ),
            subtitle: Text(
              review.date!,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Very good ${review.rating!.overallRating}'),
                const SizedBox(
                  height: 5,
                ),
                AppRatingBar(
                  initialRating: review.rating!.overallRating,
                  itemSize: 12,
                ),
              ],
            ),
          ),
          Text(
            review.content!,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ],
      );
}

import 'package:flutter/material.dart';

import '../../../../entities/review.dart';
import '../../../../utils/styles.dart';
import '../../../components/review.dart';

class ReviewsWidget extends StatelessWidget {
  final List<Review> reviews;
  final VoidCallback onViewAll;

  const ReviewsWidget({Key key, @required this.reviews, this.onViewAll})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            children: [
              Text(
                'Reviews (${reviews.length})',
                style: AppStyles.subtitleStyle.copyWith(
                  color: Colors.grey[500],
                  fontSize: 20,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: onViewAll,
                child: Text(
                  'View all',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          ...reviews
              .take(2)
              .map(
                (review) => Column(
                  children: [
                    Divider(
                      height: 40,
                      color: Colors.grey[400],
                    ),
                    AppReviewWidget(
                      review: review,
                    ),
                  ],
                ),
              )
              .toList(),
        ],
      );
}

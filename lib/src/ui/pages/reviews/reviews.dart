import 'package:flutter/material.dart';

import '../../../entities/hotel.dart';
import '../../../utils/styles.dart';
import '../../components/review.dart';

class ReviewsPage extends StatelessWidget {
  final Hotel hotel;

  const ReviewsPage({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text(
                    'Reviews (${hotel.reviews.length})',
                    style: AppStyles.titleStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Write a review',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                itemCount: hotel.reviews.length,
                itemBuilder: (_, index) => Column(
                  children: [
                    if (index == 0)
                      Divider(
                        color: Colors.grey[400],
                      ),
                    AppReviewWidget(
                      review: hotel.reviews[index],
                    ),
                  ],
                ),
                separatorBuilder: (_, __) => Divider(
                  height: 40,
                  color: Colors.grey[400],
                ),
              ),
            ),
          ],
        ),
      );
}

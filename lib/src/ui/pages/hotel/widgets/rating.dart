import 'package:flutter/material.dart';

import '../../../../entities/rating.dart';
import '../../../../utils/styles.dart';
import '../../../components/progress.dart';
import '../../../components/rating.dart';

class RatingWidget extends StatelessWidget {
  final Rating? rating;

  const RatingWidget({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        elevation: 5,
        shadowColor: Colors.grey[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '${rating!.overallRating}',
                    style: AppStyles.titleStyle.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontSize: 45,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text('Overall Rating'),
                      const SizedBox(
                        height: 5,
                      ),
                      AppRatingBar(
                        initialRating: rating!.overallRating,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              _buildRatingProgress(context, 'Room', rating!.room),
              const SizedBox(
                height: 10,
              ),
              _buildRatingProgress(context, 'Service', rating!.service),
              const SizedBox(
                height: 10,
              ),
              _buildRatingProgress(context, 'Location', rating!.location),
              const SizedBox(
                height: 10,
              ),
              _buildRatingProgress(context, 'Price', rating!.price),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      );

  Widget _buildRatingProgress(
          BuildContext context, String title, int progress) =>
      Row(
        children: [
          SizedBox(
            width: 70,
            child: Text(title),
          ),
          Expanded(
            child: ProgressWidget(
              progress: progress.toDouble(),
              secondaryColor: Colors.transparent,
            ),
          ),
        ],
      );
}

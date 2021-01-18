import 'package:flutter/material.dart';

import '../../../../../dummy_data/destinations.dart';
import '../../../../utils/styles.dart';
import '../../../components/destination.dart';

class PopularDestinationsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Popular Destinations',
              style: AppStyles.titleStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemCount: AppPopularDestinations.data.length,
              itemBuilder: (_, index) => DestinationItemWidget(
                country: AppPopularDestinations.data[index],
              ),
              separatorBuilder: (_, __) => const SizedBox(
                width: 20,
              ),
            ),
          ),
        ],
      );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/styles.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
        elevation: 5,
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.black.withOpacity(.2),
        margin: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.search);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.search,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Where are you going?',
                  style: AppStyles.subtitleStyle.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

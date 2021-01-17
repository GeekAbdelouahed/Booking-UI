import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';

class TermsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Wrap(
        spacing: 3,
        runSpacing: 3,
        alignment: WrapAlignment.center,
        children: [
          Text(
            'By signing up, you agreed with our',
            style: AppStyles.subtitleStyle.copyWith(
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Terms of Services',
              style: AppStyles.titleStyle.copyWith(
                fontSize: 15,
              ),
            ),
          ),
          Text(
            'and',
            style: AppStyles.subtitleStyle.copyWith(
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'Privacy Policy',
              style: AppStyles.titleStyle.copyWith(
                fontSize: 15,
              ),
            ),
          ),
        ],
      );
}

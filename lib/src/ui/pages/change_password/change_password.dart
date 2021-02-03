import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/fields/form_field.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            Text(
              'Change Password',
              style: AppStyles.titleStyle,
            ),
            const SizedBox(
              height: 100,
            ),
            AppFormField(
              hint: 'Current Password',
              obscureText: true,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              hint: 'New Password',
              obscureText: true,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              hint: 'Confirm New Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 100,
            ),
            AppRoundedButton(
              onPressed: () {},
              title: 'Change Password',
            ),
          ],
        ),
      );
}

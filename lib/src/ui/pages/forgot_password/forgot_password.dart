import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/fields/form_field.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: const EdgeInsets.all(30),
          children: [
            Text(
              'Fogot Password',
              style: AppStyles.titleStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Enter your email to reveive a reset password link.',
              style: AppStyles.subtitleStyle.copyWith(
                color: Colors.grey[400],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            AppFormField(
              hint: 'Your Email',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 100,
            ),
            AppRoundedButton(
              onPressed: () {},
              title: 'Send',
            ),
          ],
        ),
      );
}

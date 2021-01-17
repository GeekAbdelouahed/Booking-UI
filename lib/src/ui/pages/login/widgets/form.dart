import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';
import '../../../components/buttons/rounded_button.dart';
import '../../../components/fields/rounded_outline_text_field.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  void _validateForm() {}

  void _forgotPassword() {}

  @override
  Widget build(BuildContext context) => Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppRoundedOutlineTextFormField(
              hint: 'Your Email',
            ),
            const SizedBox(
              height: 15,
            ),
            AppRoundedOutlineTextFormField(
              obscureText: true,
              hint: 'Password',
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: InkWell(
                onTap: _forgotPassword,
                child: Text(
                  'Forgot your password?',
                  style: AppStyles.subtitleStyle.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            AppRoundedButton(
              onPressed: _validateForm,
              title: 'Log in',
            ),
          ],
        ),
      );
}

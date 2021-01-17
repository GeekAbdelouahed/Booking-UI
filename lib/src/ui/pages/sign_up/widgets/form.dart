import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';
import '../../../components/buttons/rounded_button.dart';
import '../../../components/fields/rounded_outline_text_field.dart';
import 'terms.dart';
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
              hint: 'First Name',
            ),
            const SizedBox(
              height: 15,
            ),
            AppRoundedOutlineTextFormField(
              hint: 'Last Name',
            ),
            const SizedBox(
              height: 15,
            ),
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
            TermsWidget(),
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

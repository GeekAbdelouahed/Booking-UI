import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/extensions.dart';
import '../../../components/buttons/rounded_button.dart';
import '../../../components/dialogs/waiting.dart';
import '../../../components/fields/rounded_outline_text_field.dart';
import 'terms.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _validateForm() {
    bool isFormValid = _formKey.currentState.validate();
    if (!isFormValid) return;
    print('firstName: ${_firstNameController.text}');
    print('lastName: ${_lastNameController.text}');
    print('email: ${_emailController.text}');
    print('password: ${_passwordController.text}');

    context.showAppDialog(
      isDismissible: false,
      child: AppDialogWaiting(),
    );

    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        AppRoutes.home,
        ModalRoute.withName(''),
      );
    });
  }

  @override
  Widget build(BuildContext context) => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppRoundedOutlineTextFormField(
              hint: 'First Name',
              controller: _firstNameController,
              textInputAction: TextInputAction.next,
              validator: (text) {
                if (text?.isEmpty ?? true) return 'Field required!';
                return null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            AppRoundedOutlineTextFormField(
              hint: 'Last Name',
              controller: _lastNameController,
              textInputAction: TextInputAction.next,
              validator: (text) {
                if (text?.isEmpty ?? true) return 'Field required!';
                return null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            AppRoundedOutlineTextFormField(
              hint: 'Email',
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              validator: (text) {
                if (text?.isEmpty ?? true) return 'Field required!';
                if (!text.isValidEmail) return 'Email invalid!';
                return null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            AppRoundedOutlineTextFormField(
              obscureText: true,
              hint: 'Password',
              controller: _passwordController,
              textInputAction: TextInputAction.next,
              validator: (text) {
                if (text?.isEmpty ?? true) return 'Field required!';
                if (!text.isValidPassword) return 'Password invalid!';
                return null;
              },
            ),
            const SizedBox(
              height: 30,
            ),
            AppRoundedOutlineTextFormField(
              obscureText: true,
              hint: 'Confirm Password',
              controller: _confirmPasswordController,
              validator: (text) {
                if (text?.isEmpty ?? true) return 'Field required!';
                if (!text.isValidPassword) return 'Password invalid!';
                if (_passwordController.text != _confirmPasswordController.text)
                  return 'Passwords are not matched!';
                return null;
              },
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
              title: 'Sign up',
            ),
          ],
        ),
      );

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}

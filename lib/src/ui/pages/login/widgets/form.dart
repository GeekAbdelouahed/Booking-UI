import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../routes/routes.dart';
import '../../../../utils/extensions.dart';
import '../../../../utils/styles.dart';
import '../../../components/buttons/rounded_button.dart';
import '../../../components/dialogs/waiting.dart';
import '../../../components/fields/form_field.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _validateForm() {
    final isFormValid = _formKey.currentState.validate();
    if (!isFormValid) return;
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

  void _forgotPassword() {
    Navigator.of(context).pushNamed(AppRoutes.forgotPassword);
  }

  @override
  Widget build(BuildContext context) => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppFormField(
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
            AppFormField(
              obscureText: true,
              hint: 'Password',
              controller: _passwordController,
              validator: (text) {
                if (text?.isEmpty ?? true) return 'Field required!';
                if (!text.isValidPassword) return 'Password invalid!';
                return null;
              },
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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import 'widgets/form.dart';
import 'widgets/social.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _signUp() {}

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Log in',
                  style: AppStyles.titleStyle,
                ),
                const SizedBox(
                  height: 30,
                ),
                SocialWidget(
                  onPressedFacebook: () {},
                  onPressedTwitter: () {},
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: const Divider(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Or log in with email',
                      style: AppStyles.subtitleStyle.copyWith(
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: const Divider(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                FormWidget(),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: const Divider(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Don\'t have an account?',
                      style: AppStyles.subtitleStyle.copyWith(
                        color: Colors.grey[500],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: _signUp,
                      child: Text(
                        'Sign up',
                        style: AppStyles.titleStyle.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: const Divider(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}

import 'package:flutter/material.dart';

import '../../../routes/routes.dart';
import '../../../utils/styles.dart';
import '../../components/social.dart';
import 'widgets/form.dart';

class LoginPage extends StatelessWidget {
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
                FormWidget(),
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
                      'OR',
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
                SocialWidget(
                  onPressedFacebook: () {},
                  onPressedGoogle: () {},
                ),
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
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.signUp);
                      },
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

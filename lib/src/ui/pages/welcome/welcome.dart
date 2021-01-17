import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../routes/routes.dart';
import '../../../utils/styles.dart';
import '../../components/buttons/rounded_button.dart';

class WelcomePage extends StatelessWidget {
  void _getStarted(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.getStarted,
    );
  }

  void _login(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.login,
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/get-started.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
            color: Colors.black.withOpacity(.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      FontAwesomeIcons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Booking',
                  textAlign: TextAlign.center,
                  style: AppStyles.titleStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Best hotel deals for your holiday',
                  textAlign: TextAlign.center,
                  style: AppStyles.subtitleStyle,
                ),
                const Spacer(),
                AppRoundedButton(
                  onPressed: () {
                    _getStarted(context);
                  },
                  title: 'Get started',
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have account?',
                      style: AppStyles.subtitleStyle,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    InkWell(
                      onTap: () {
                        _login(context);
                      },
                      child: Text(
                        'Login',
                        style: AppStyles.titleStyle.copyWith(
                          color: Colors.white70,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
}

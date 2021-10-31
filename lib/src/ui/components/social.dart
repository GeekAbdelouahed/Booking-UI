import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'buttons/rounded_button.dart';

class SocialWidget extends StatelessWidget {
  final VoidCallback? onPressedFacebook;
  final VoidCallback? onPressedGoogle;

  const SocialWidget({
    Key? key,
    this.onPressedFacebook,
    this.onPressedGoogle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: AppRoundedButton(
              onPressed: onPressedFacebook,
              padding: const EdgeInsets.symmetric(vertical: 15),
              color: const Color(0xff3a4d86),
              icon: Icon(
                FontAwesomeIcons.facebookF,
                color: Colors.white,
                size: 15,
              ),
              title: 'Facebook',
              textColor: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: AppRoundedButton(
              onPressed: onPressedGoogle,
              padding: const EdgeInsets.symmetric(vertical: 15),
              color: const Color(0xffDB4437),
              icon: Icon(
                FontAwesomeIcons.google,
                color: Colors.white,
                size: 15,
              ),
              title: 'Google',
              textColor: Colors.white,
            ),
          ),
        ],
      );
}

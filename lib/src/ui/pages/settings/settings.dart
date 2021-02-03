import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/extensions.dart';
import '../../../utils/styles.dart';
import '../../components/dialogs/languages.dart';
import '../../components/item.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            Text(
              'Settings',
              style: AppStyles.titleStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            ItemListWidget(
              onPressed: () {},
              title: 'Notifications',
              icon: CupertinoIcons.bell_fill,
            ),
            const Divider(
              height: 1,
            ),
            ItemListWidget(
              onPressed: () async {
                final language =
                    await context.showAppDialog(child: AppDialogLanguages());
                if (language == null) return;
                setState(() {
                  _selectedLanguage = language;
                });
              },
              title: 'Languages',
              subtitle: _selectedLanguage,
              icon: Icons.keyboard_arrow_right,
            ),
            const Divider(
              height: 1,
            ),
            ItemListWidget(
              onPressed: () {},
              title: 'Country',
              subtitle: 'Algeria',
              icon: Icons.keyboard_arrow_right,
            ),
            const Divider(
              height: 1,
            ),
            ItemListWidget(
              onPressed: () {},
              title: 'Currency',
              subtitle: 'USD',
              icon: Icons.keyboard_arrow_right,
            ),
            const Divider(
              height: 1,
            ),
            ItemListWidget(
              onPressed: () {},
              title: 'Terms of Services',
              icon: Icons.keyboard_arrow_right,
            ),
            const Divider(
              height: 1,
            ),
            ItemListWidget(
              onPressed: () {},
              title: 'Privacy Policy',
              icon: Icons.keyboard_arrow_right,
            ),
            const Divider(
              height: 1,
            ),
            ItemListWidget(
              onPressed: () {},
              title: 'Give Us Feedbacks',
              icon: Icons.keyboard_arrow_right,
            ),
            const Divider(
              height: 1,
            ),
            ItemListWidget(
              onPressed: () {},
              title: 'Logout',
              tint: Colors.red,
              icon: Icons.keyboard_arrow_right,
            ),
            const Divider(
              height: 1,
            ),
          ],
        ),
      );
}

import 'package:booking/src/ui/components/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/styles.dart';

class SettingsPage extends StatelessWidget {
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
              onPressed: () {},
              title: 'Country',
              subtitle: 'Algeria',
            ),
            const Divider(
              height: 1,
            ),
            ItemListWidget(
              onPressed: () {},
              title: 'Currency',
              subtitle: 'USD',
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
              icon: Icons.keyboard_arrow_right,
            ),
            const Divider(
              height: 1,
            ),
          ],
        ),
      );
}

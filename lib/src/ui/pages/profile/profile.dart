import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import '../../components/image.dart';
import 'widgets/item.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Abdelouahed',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.titleStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'View and edit profile',
                        style: AppStyles.subtitleStyle.copyWith(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                AppImage(
                  url:
                      'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
                  height: 75,
                  width: 75,
                  radius: 100,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ItemWidget(
            onPressed: () {},
            title: 'Change Password',
            icon: Icons.lock,
          ),
          const Divider(
            height: 1,
          ),
          ItemWidget(
            onPressed: () {},
            title: 'Invite Friends',
            icon: Icons.people,
          ),
          const Divider(
            height: 1,
          ),
          ItemWidget(
            onPressed: () {},
            title: 'Credits & Coupons',
            icon: Icons.card_giftcard,
          ),
          const Divider(
            height: 1,
          ),
          ItemWidget(
            onPressed: () {},
            title: 'Help Center',
            icon: Icons.help,
          ),
          const Divider(
            height: 1,
          ),
          ItemWidget(
            onPressed: () {},
            title: 'Payments',
            icon: Icons.payment,
          ),
          const Divider(
            height: 1,
          ),
          ItemWidget(
            onPressed: () {},
            title: 'Settings',
            icon: Icons.settings,
          ),
          const Divider(
            height: 1,
          ),
        ],
      );
}

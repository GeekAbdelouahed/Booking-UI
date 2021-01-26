import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../routes/routes.dart';
import '../../../utils/styles.dart';
import '../../components/image.dart';
import '../../components/item.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.editProfile);
          },
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ouahid Medjoudja',
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
              const SizedBox(
                width: 10,
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
        ItemListWidget(
          onPressed: () {},
          title: 'Change Password',
          icon: CupertinoIcons.lock_fill,
        ),
        const Divider(
          height: 1,
        ),
        ItemListWidget(
          onPressed: () {},
          title: 'Invite Friends',
          icon: CupertinoIcons.person_2_alt,
        ),
        const Divider(
          height: 1,
        ),
        ItemListWidget(
          onPressed: () {},
          title: 'Credits & Coupons',
          icon: CupertinoIcons.gift_fill,
        ),
        const Divider(
          height: 1,
        ),
        ItemListWidget(
          onPressed: () {},
          title: 'Help Center',
          icon: CupertinoIcons.question_circle_fill,
        ),
        const Divider(
          height: 1,
        ),
        ItemListWidget(
          onPressed: () {},
          title: 'Payments',
          icon: CupertinoIcons.creditcard_fill,
        ),
        const Divider(
          height: 1,
        ),
        ItemListWidget(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.settings);
          },
          title: 'Settings',
          icon: Icons.settings,
        ),
        const Divider(
          height: 1,
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

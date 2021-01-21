import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/fields/form_field.dart';
import 'widgets/avatar.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          children: [
            Text(
              'Edit Profile',
              style: AppStyles.titleStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: AvatarWidget(),
            ),
            const SizedBox(
              height: 30,
            ),
            AppFormField(
              hint: 'Username',
              controller: _userNameController..text = 'Abdelouahed Medjoudja',
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              hint: 'Email',
              controller: _emailController..text = 'abde@gmail.com',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              hint: 'Phone',
              controller: _phoneController..text = '+213 6 66 99 44 55',
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              hint: 'Date of birth',
              controller: _dateOfBirthController..text = '1990/01/01',
              keyboardType: TextInputType.datetime,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 20,
            ),
            AppFormField(
              hint: 'Address',
              controller: _addressController
                ..text = 'Touggourt, Ouargla, Algeria',
              keyboardType: TextInputType.streetAddress,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 30,
            ),
            AppRoundedButton(
              onPressed: () {},
              title: 'Update',
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      );

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _dateOfBirthController.dispose();
    _addressController.dispose();
    super.dispose();
  }
}

import 'package:flutter/material.dart';

class AppDialogLanguages extends StatelessWidget {
  final Function(String)? onSelectLanguage;

  const AppDialogLanguages({
    Key? key,
    this.onSelectLanguage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Text('Select Language'),
      children: [
        _buildItem(context, 'English'),
        const Divider(
          height: 20,
        ),
        _buildItem(context, 'Spanish'),
        const Divider(
          height: 20,
        ),
        _buildItem(context, 'Arabic'),
        const Divider(
          height: 20,
        ),
        _buildItem(context, 'French'),
      ],
    );
  }

  RadioListTile _buildItem(BuildContext context, String title) {
    return RadioListTile(
      title: Text(title),
      value: title,
      groupValue: 1,
      onChanged: (_) {
        onSelectLanguage?.call(title);
        Navigator.of(context).pop(title);
      },
    );
  }
}

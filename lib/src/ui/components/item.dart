import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String subtitle;
  final IconData icon;

  const ItemListWidget({
    Key key,
    @required this.title,
    this.subtitle,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
        onTap: onPressed,
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle ?? '') : null,
        trailing: Icon(icon),
      );
}

import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final IconData icon;

  const ItemWidget({
    Key key,
    @required this.title,
    @required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
        onTap: onPressed,
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        title: Text(title),
        trailing: Icon(icon),
      );
}

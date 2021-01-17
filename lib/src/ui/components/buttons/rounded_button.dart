import 'package:flutter/material.dart';

class AppRoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final EdgeInsetsGeometry padding;
  final double radius;
  final double elevation;
  final Color color;
  final Color textColor;
  final Widget icon;

  const AppRoundedButton({
    Key key,
    @required this.onPressed,
    @required this.title,
    this.padding = const EdgeInsets.symmetric(horizontal: 30, vertical: 17),
    this.radius = 30,
    this.elevation,
    this.color,
    this.textColor,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
        elevation: elevation,
        onPressed: onPressed,
        color: color ?? Theme.of(context).primaryColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...{
              icon,
              const SizedBox(
                width: 10,
              ),
            },
            Text(
              title,
              style: Theme.of(context).textTheme.button.copyWith(
                    color: textColor ?? Colors.white.withOpacity(.9),
                    fontSize: 16,
                  ),
            ),
          ],
        ),
      );
}

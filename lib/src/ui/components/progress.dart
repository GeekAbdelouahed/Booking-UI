import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  final double progress;
  final double height;
  final Color primaryColor;

  final Color secondaryColor;
  final double radius;

  const ProgressWidget({
    Key key,
    @required this.progress,
    this.height,
    this.primaryColor,
    this.secondaryColor,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: height ?? 6,
        child: LayoutBuilder(
          builder: (context, constraints) => Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: secondaryColor ?? Colors.grey[300],
                  borderRadius: BorderRadius.circular(radius ?? 100),
                ),
              ),
              Container(
                height: double.infinity,
                width: constraints.maxWidth * progress / 5,
                decoration: BoxDecoration(
                  color: primaryColor ?? Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(radius ?? 100),
                ),
              ),
            ],
          ),
        ),
      );
}

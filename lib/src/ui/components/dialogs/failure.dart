import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDialogFailure extends StatelessWidget {
  final String? message;

  const AppDialogFailure({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Theme.of(context).errorColor,
              size: 70,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              message ?? 'Failure',
            ),
          ],
        ),
      ),
    );
  }
}

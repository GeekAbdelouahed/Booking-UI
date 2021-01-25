import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDialogSuccess extends StatelessWidget {
  final String message;

  const AppDialogSuccess({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                CupertinoIcons.check_mark_circled_solid,
                color: Theme.of(context).primaryColor,
                size: 70,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                message ?? 'Success',
              ),
            ],
          ),
        ),
      );
}

import 'package:flutter/material.dart';

import '../buttons/rounded_button.dart';
import '../rooms.dart';

class AppRoomsDialog extends StatefulWidget {
  final Function(int, int, int) onSelectRooms;

  const AppRoomsDialog({Key key, this.onSelectRooms}) : super(key: key);

  @override
  _AppRoomsDialogState createState() => _AppRoomsDialogState();
}

class _AppRoomsDialogState extends State<AppRoomsDialog> {
  int _room = 1;
  int _adults = 1;
  int _children = 0;

  @override
  Widget build(BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            AppRoomsWidget(
              onRoomsChanged: (room, adults, children) {
                _room = room;
                _adults = adults;
                _children = children;
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: AppRoundedButton(
                onPressed: () {
                  widget.onSelectRooms?.call(_room, _adults, _children);
                  Navigator.of(context).pop();
                },
                title: 'Apply',
              ),
            ),
          ],
        ),
      );
}

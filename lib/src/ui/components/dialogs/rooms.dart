import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import '../buttons/rounded_button.dart';

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
            ListTile(
              title: Text('Number of Rooms'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      if (_room == 1) return;
                      setState(() {
                        _room--;
                      });
                    },
                    icon: Icon(Icons.remove_circle_outline_rounded),
                  ),
                  Text(
                    '$_room',
                    style: AppStyles.titleStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _room++;
                      });
                    },
                    icon: Icon(Icons.add_circle_outline),
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              title: RichText(
                text: TextSpan(
                  text: 'Adults  ',
                  style: Theme.of(context).textTheme.button.copyWith(
                        color: Colors.black,
                      ),
                  children: [
                    TextSpan(
                      text: '(Aged 18+)',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      if (_adults == 1) return;
                      setState(() {
                        _adults--;
                      });
                    },
                    icon: Icon(Icons.remove_circle_outline_rounded),
                  ),
                  Text(
                    '$_adults',
                    style: AppStyles.titleStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _adults++;
                      });
                    },
                    icon: Icon(Icons.add_circle_outline),
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              title: RichText(
                text: TextSpan(
                  text: 'Children  ',
                  style: Theme.of(context).textTheme.button.copyWith(
                        color: Colors.black,
                      ),
                  children: [
                    TextSpan(
                      text: '(0-17)',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      if (_children == 1) return;
                      setState(() {
                        _children--;
                      });
                    },
                    icon: Icon(Icons.remove_circle_outline_rounded),
                  ),
                  Text(
                    '$_children',
                    style: AppStyles.titleStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _children++;
                      });
                    },
                    icon: Icon(Icons.add_circle_outline),
                  ),
                ],
              ),
            ),
            const Divider(),
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

import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class AppRoomsWidget extends StatefulWidget {
  final Function(int, int, int) onRoomsChanged;

  const AppRoomsWidget({Key key, this.onRoomsChanged}) : super(key: key);

  @override
  _AppRoomsWidgetState createState() => _AppRoomsWidgetState();
}

class _AppRoomsWidgetState extends State<AppRoomsWidget> {
  int _room = 1;
  int _adults = 1;
  int _children = 0;

  void _onRoomChanged() {
    widget.onRoomsChanged?.call(_room, _adults, _children);
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
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
                    _onRoomChanged();
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
                    _onRoomChanged();
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
                    _onRoomChanged();
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
                    _onRoomChanged();
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
                    _onRoomChanged();
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
                    _onRoomChanged();
                  },
                  icon: Icon(Icons.add_circle_outline),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      );
}

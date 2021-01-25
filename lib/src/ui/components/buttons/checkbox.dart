import 'package:flutter/material.dart';

class AppCheckBox extends StatefulWidget {
  final String title;
  final bool value;
  final Function(bool) onChanged;

  const AppCheckBox({
    Key key,
    this.title,
    this.value = false,
    this.onChanged,
  }) : super(key: key);

  @override
  _AppCheckBoxState createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.value;
  }

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          setState(() {
            _isChecked = !_isChecked;
          });

          widget.onChanged?.call(_isChecked);
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300],
                  width: 2,
                ),
                shape: BoxShape.circle,
              ),
              child: Container(
                height: 13,
                width: 13,
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: _isChecked
                      ? Theme.of(context).accentColor
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            if (widget.title?.isNotEmpty ?? false) ...{
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            },
          ],
        ),
      );
}

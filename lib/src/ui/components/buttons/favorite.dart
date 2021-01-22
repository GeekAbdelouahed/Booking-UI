import 'package:flutter/material.dart';

class AppFavoriteButton extends StatefulWidget {
  final Function(bool) onFavoriteChanged;
  final bool isFavorite;

  const AppFavoriteButton({
    Key key,
    this.onFavoriteChanged,
    this.isFavorite = false,
  }) : super(key: key);

  @override
  _AppFavoriteButtonState createState() => _AppFavoriteButtonState();
}

class _AppFavoriteButtonState extends State<AppFavoriteButton> {
  bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
  }

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () {
          setState(() {
            _isFavorite = !_isFavorite;
          });

          widget.onFavoriteChanged?.call(_isFavorite);
        },
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            _isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Theme.of(context).primaryColor,
          ),
        ),
      );
}

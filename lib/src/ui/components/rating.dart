import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppRatingBar extends StatelessWidget {
  final Function(double) onRatingUpdate;
  final bool updateOnDrag;
  final double initialRating;
  final double itemSize ;

  const AppRatingBar({
    Key key,
    this.onRatingUpdate,
    this.updateOnDrag = false,
    this.initialRating = 0,
    this.itemSize = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RatingBar(
        initialRating: initialRating,
        onRatingUpdate: (rating) {
          onRatingUpdate?.call(rating);
        },
        allowHalfRating: true,
        updateOnDrag: updateOnDrag,
        itemSize: itemSize,
        itemPadding: const EdgeInsets.symmetric(horizontal: 3),
        ratingWidget: RatingWidget(
          empty: Icon(
            FontAwesomeIcons.star,
            color: Theme.of(context).primaryColor,
          ),
          half: Icon(
            FontAwesomeIcons.starHalfAlt,
            color: Theme.of(context).primaryColor,
          ),
          full: Icon(
            FontAwesomeIcons.solidStar,
            color: Theme.of(context).primaryColor,
          ),
        ),
      );
}

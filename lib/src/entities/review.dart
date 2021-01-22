import 'rating.dart';
import 'user.dart';

class Review {
  final User user;
  final Rating rating;
  final String content;
  final String date;

  Review({this.user, this.content, this.rating, this.date});
}

import 'rating.dart';
import 'user.dart';

class Review {
  final User user;
  final Rating rating;
  final String content;

  Review({this.user, this.content, this.rating});
}

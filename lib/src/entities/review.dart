import 'rating.dart';
import 'user.dart';

class Review {
  final User user;
  final Rating rating;
  final String content;
  final String date;

  Review({
    required this.user,
    required this.content,
    required this.rating,
    required this.date,
  });
}

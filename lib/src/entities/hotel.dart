import 'address.dart';
import 'rating.dart';
import 'review.dart';

class Hotel {
  final String title;
  final String subtitle;
  final String description;
  final List<String> photos;
  final int price;
  final Rating rating;
  final Address address;
  final List<Review> reviews;

  Hotel({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.photos,
    required this.price,
    required this.rating,
    required this.address,
    this.reviews = const [],
  });
}

import 'address.dart';
import 'rating.dart';
import 'review.dart';

class Hotel {
  final String id;
  final String title;
  final String subtitle;
  final String description;
  final List<String> photos;
  final int price;
  final Rating rating;
  final List<Review> reviews;
  final Address address;

  Hotel({
    this.id,
    this.title,
    this.subtitle,
    this.description,
    this.photos,
    this.price,
    this.rating,
    this.reviews,
    this.address,
  });
}

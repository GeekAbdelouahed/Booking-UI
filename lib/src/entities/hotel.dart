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
  final String country;
  final String city;
  final double latitude;
  final double longitude;
  final List<Review> reviews;

  Hotel({
    this.id,
    this.title,
    this.subtitle,
    this.description,
    this.photos,
    this.price,
    this.rating,
    this.country,
    this.city,
    this.latitude,
    this.longitude,
    this.reviews,
  });
}

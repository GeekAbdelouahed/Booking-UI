import 'city.dart';
import 'country.dart';

class Address {
  final Country country;
  final City city;
  final double latitude;
  final double longitude;

  Address({
    required this.country,
    required this.city,
    required this.latitude,
    required this.longitude,
  });
}

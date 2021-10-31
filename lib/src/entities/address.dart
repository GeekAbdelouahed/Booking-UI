import 'city.dart';
import 'country.dart';

class Address {
  final Country? country;
  final City? city;
  final double? latitude;
  final double? longitude;

  Address({this.country, this.city, this.latitude, this.longitude});
}

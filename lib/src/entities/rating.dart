class Rating {
  final int room;
  final int service;
  final int location;
  final int price;

  Rating({this.room, this.service, this.location, this.price});

  double get overallRating => (room + service + location + price) / 5;
}

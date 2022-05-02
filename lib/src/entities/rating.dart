class Rating {
  final int room;
  final int service;
  final int location;
  final int price;

  Rating({
    required this.room,
    required this.service,
    required this.location,
    required this.price,
  });

  double get overallRating => (room + service + location + price) / 5;
}

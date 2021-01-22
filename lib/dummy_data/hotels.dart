import '../src/entities/address.dart';
import '../src/entities/city.dart';
import '../src/entities/country.dart';
import '../src/entities/hotel.dart';
import '../src/entities/rating.dart';
import '../src/entities/review.dart';
import '../src/entities/user.dart';

class AppHotels {
  static List<Hotel> data = [
    Hotel(
      title: 'Cape Town Hotel',
      subtitle: 'Extraordinary five-star outdoor activities',
      description:
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc",
      price: 180,
      rating: Rating(
        location: 4,
        price: 5,
        room: 5,
        service: 3,
      ),
      photos: [
        'https://images.unsplash.com/photo-1576485375217-d6a95e34d043?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=20',
        'https://images.unsplash.com/photo-1529528070131-eda9f3e90919?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Y2FwZSUyMHRvd258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=20',
        'https://images.unsplash.com/photo-1583409612679-90ecabb5bbb4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjJ8fGNhcGUlMjB0b3dufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=20',
      ],
      address: Address(
        city: City(
          name: 'Cape Town',
        ),
        country: Country(
          name: 'South Africa',
        ),
        latitude: -33.924870,
        longitude: 18.424055,
      ),
      reviews: [
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
      ],
    ),
    Hotel(
      title: 'Hawaii Sky & Sun',
      subtitle: 'Extraordinary five-star outdoor activities',
      description:
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc",
      price: 200,
      rating: Rating(
        location: 5,
        price: 3,
        room: 4,
        service: 3,
      ),
      photos: [
        'https://images.unsplash.com/photo-1580854903140-bae685ca67da?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=20',
        'https://images.unsplash.com/photo-1509610696553-9243c1e230f0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=400&q=20',
        'https://images.unsplash.com/photo-1535392432937-a27c36ec07b5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8aGF3YWlpfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=20'
      ],
      address: Address(
        city: City(
          name: 'California',
        ),
        country: Country(
          name: 'UnitedState',
        ),
        latitude: 19.896767,
        longitude: -155.582779,
      ),
      reviews: [
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
      ],
    ),
    Hotel(
      title: 'China Hotel TeaHouse',
      subtitle: 'Extraordinary five-star outdoor activities',
      description:
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc",
      price: 180,
      rating: Rating(
        location: 5,
        price: 5,
        room: 5,
        service: 5,
      ),
      photos: [
        'https://images.unsplash.com/photo-1513781050488-6dd358209a1b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y2hpbmF8ZW58MHwxfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=20',
        'https://images.unsplash.com/photo-1529921879218-f99546d03a9d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hpbmF8ZW58MHwxfDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=20'
      ],
      address: Address(
        city: City(
          name: 'Beijing',
        ),
        country: Country(
          name: 'China',
        ),
        latitude: 39.904202,
        longitude: 116.407394,
      ),
      reviews: [
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
        Review(
          user: User(
            firstName: 'John',
            lastName: 'Dao',
            avatar:
                'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
          ),
          content:
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even",
          rating: Rating(
            service: 4,
            room: 4,
            price: 4,
            location: 4,
          ),
          date: '01 May 2020',
        ),
      ],
    ),
  ];
}

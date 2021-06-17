import 'restaurant.dart';

class MockData extends Restaurant {
  MockData(String name, String imageURL, double rating, bool delivery,
      List<MenuItem> menu, List<Location> locations)
      : super(name, imageURL, rating, delivery, menu, locations);

  static List<Restaurant> getRestaurant() {
    return <Restaurant>[
      Restaurant(
          'Akonor Plaza',
          'https://media-cdn.tripadvisor.com/media/photo-s/17/75/3f/d1/restaurant-in-valkenswaard.jpg',
          4.7,
          true, <MenuItem>[
        MenuItem('Jollof rice', 'Food', 10.50, 4.1, true, 'imageURL'),
        MenuItem('Mocha Cocktail', 'Drink', 5.0, 3.9, true, 'imageURL')
      ], <Location>[
        Location('1 Uinversity Avenue', 'Berekuso')
      ]),
      Restaurant(
          "Big Joe's",
          'https://media-cdn.tripadvisor.com/media/photo-s/17/75/3f/d1/restaurant-in-valkenswaard.jpg',
          4.5,
          true, <MenuItem>[
        MenuItem('Jollof rice', 'Food', 10.50, 4.9, true, 'imageURL'),
        MenuItem('Banku & Okro', 'Food', 10.50, 4.7, true, 'imageURL'),
        MenuItem('Special Sobolo', 'Drink', 5.50, 4.6, true, 'imageURL')
      ], <Location>[
        Location('1 Uinversity Avenue', 'Berekuso')
      ]),
      Restaurant(
          "May's Plaza",
          'https://media-cdn.tripadvisor.com/media/photo-s/17/75/3f/d1/restaurant-in-valkenswaard.jpg',
          4.9,
          false, <MenuItem>[
        MenuItem('Jollof rice', 'Food', 10.50, 4.5, true, 'imageURL'),
        MenuItem('Mocha Cocktail', 'Drink', 5.0, 5.0, true, 'imageURL')
      ], <Location>[
        Location('1 Uinversity Avenue', 'Berekuso'),
        Location('12 Pious Lane', 'Adabraka')
      ])
    ];
  }
}

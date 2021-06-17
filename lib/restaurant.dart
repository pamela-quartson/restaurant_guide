// import 'package:flutter/cupertino.dart';

class Restaurant {
  String name;
  String imageURL;
  double rating;
  bool delivery;
  List<MenuItem> menu;
  List<Location> locations;
  Restaurant(this.name, this.imageURL, this.rating, this.delivery, this.menu,
      this.locations);
}

class MenuItem {
  String name;
  String type;
  double price;
  double rating;
  bool availabilty;
  String imageURL;
  MenuItem(this.name, this.type, this.price, this.rating, this.availabilty,
      this.imageURL);
}

class Location {
  String address;
  String cityTown;
  Location(this.address, this.cityTown);
}

import 'package:flutter/material.dart';
import 'restaurant_page.dart';
import 'restaurant.dart';

class AllRestaurants extends StatelessWidget {
  final List<Restaurant> restaurants;
  AllRestaurants(this.restaurants);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Restaurants Around You')),
        body: ListView.builder(
          itemCount: restaurants.length,
          itemBuilder: (context, index) {
            var currentItem = restaurants[index];
            return Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RestaurantPage(currentItem))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.network(currentItem.imageURL,
                                height: 140.0, width: 300.0, fit: BoxFit.cover),
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(20, 100, 50, 10),
                          child: Text(currentItem.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                              ))),
                      Container(
                          padding: EdgeInsets.fromLTRB(235, 103, 50, 10),
                          child: Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(255, 105, 50, 10),
                          child: Text(currentItem.rating.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              )))
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}

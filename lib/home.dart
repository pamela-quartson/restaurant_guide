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
                                height: 170.0, width: 400.0, fit: BoxFit.cover),
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(20, 130, 50, 10),
                          child: Text(currentItem.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                              ))),
                      Container(
                          padding: EdgeInsets.fromLTRB(330, 133, 50, 10),
                          child: Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(350, 135, 50, 10),
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

    // Column(
    //   children: [
    //     Row(
    //       children: [
    //         Expanded(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children:
    // restaurants
    // .map((item) => new Text(item.name))
    // .toList()
    // <Widget>[
    // Text(restaurants[0].imageURL),
    // Text(restaurants[0].name),
    // for (var item in restaurants) Text(item.name),
    // Image.network(item.imageURL)
    // Text(item.imageURL)
    //                   ],
    //                 ),
    //               )
    //             ],
    //           ),
    //         ],
    //       )

    //       );
  }
}

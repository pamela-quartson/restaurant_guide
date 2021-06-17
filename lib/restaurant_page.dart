import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/restaurant.dart';

class RestaurantPage extends StatelessWidget {
  final Restaurant restaurant;
  RestaurantPage(this.restaurant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(restaurant.name)),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.network(restaurant.imageURL,
                    height: 170.0, width: 400.0, fit: BoxFit.cover),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.red,
                size: 20,
              ),
              Text('  Location(s): '),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _renderLocation(context, restaurant.locations),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _checkDelivery(context, restaurant.delivery),
              Text('  Delivery')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.fastfood_sharp,
                // color: Colors.red,
                size: 18,
              ),
              InkWell(onTap: () {}, child: Text(' Menu'))
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _renderLocation(BuildContext context, List<Location> locations) {
    var res = <Widget>[];
    for (int i = 0; i < locations.length; i++) {
      res.add(Text(
        locations[i].address + ', ' + locations[i].cityTown + '\t',
        style: TextStyle(fontStyle: FontStyle.italic),
      ));
    }
    return res;
  }

  Icon _checkDelivery(BuildContext context, bool delivery) {
    if (delivery) {
      return Icon(
        Icons.check_circle_outline,
        color: Colors.green,
        size: 18,
      );
    } else {
      return Icon(
        Icons.cancel_outlined,
        color: Colors.red,
        size: 18,
      );
    }
  }
}
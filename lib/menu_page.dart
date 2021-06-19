import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/restaurant.dart';

class MenuPage extends StatelessWidget {
  final List<MenuItem> menu;
  MenuPage(this.menu);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                text: 'Food',
                icon: Icon(Icons.fastfood),
              ),
              Tab(
                text: 'Drinks',
                icon: Icon(Icons.fastfood),
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _renderFood(context, menu),
              ),
              Column(
                children: _renderDrink(context, menu),
              )
            ],
          ),
        ));
  }

  List<Widget> _renderFood(BuildContext context, List<MenuItem> menu) {
    var res = <Widget>[];
    for (int i = 0; i < menu.length; i++) {
      if (menu[i].type == 'food') {
        res.add(Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), color: Colors.black12),
          child: Row(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      menu[i].imageURL,
                      width: 100,
                      height: 100,
                    ),
                  )),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(menu[i].name),
                        Container(
                          padding: EdgeInsets.only(left: 17),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 12,
                              ),
                              Text(
                                menu[i].rating.toString(),
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Text('GHS ' + menu[i].price.toString()),
                  ],
                ),
              )
            ],
          ),
        ));
      }
    }
    ;

    return res;
  }

  List<Widget> _renderDrink(BuildContext context, List<MenuItem> menu) {
    var res = <Widget>[];
    for (int i = 0; i < menu.length; i++) {
      if (menu[i].type == 'drink') {
        res.add(Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0), color: Colors.black12),
          child: Row(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      menu[i].imageURL,
                      width: 100,
                      height: 100,
                    ),
                  )),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(menu[i].name),
                        Container(
                          padding: EdgeInsets.only(left: 17),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 12,
                              ),
                              Text(
                                menu[i].rating.toString(),
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Text('GHS ' + menu[i].price.toString()),
                  ],
                ),
              )
            ],
          ),
        ));
      }
    }
    ;

    return res;
  }
}

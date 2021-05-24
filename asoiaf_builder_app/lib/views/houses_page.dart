import 'dart:convert';

import '../models/classes/house.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

// Houses page
class HousesPage extends StatefulWidget {
  List<House> _houses = [];

  HousesPage({Key key}) : super(key: key) {}

  // Load houses from json file
  Future loadHouses() async {
    return rootBundle.loadString('data/houses.json')
          .then((jsonHouses) => fillHouses(jsonHouses));
  }

  void fillHouses(jsonHouses) {
    Map<String, dynamic> houses = jsonDecode(jsonHouses);
    for (var house in houses['houses']) {
      _houses.add(House.fromJson(house));
    }
  }

  @override
  _HousesPageState createState() => _HousesPageState();
}

class _HousesPageState extends State<HousesPage> {
  @override
  Widget build(Object context) {
    return FutureBuilder<dynamic>(
      future: widget.loadHouses(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Houses')
          ),
          body: ListView.builder(
            itemCount: widget._houses.length,
            itemBuilder: (BuildContext context, int index) {
              var house = widget._houses[index];
              return Container(
                child: ListTile(
                  leading: Image.asset(
                    house.getEmblemPicture(), width: 48, height: 48,
                  ),
                  title: Text(house.getName()),
                )
              );
            }
          )
        );
      }
    );
  }
}
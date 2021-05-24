import '../models/classes/house.dart';
import 'package:flutter/material.dart';
import '../helpers/database.dart';

// Houses page
class HousesPage extends StatefulWidget {
  HousesPage({Key key}) : super(key: key) {}

  @override
  _HousesPageState createState() => _HousesPageState();
}

class _HousesPageState extends State<HousesPage> {
  @override
  Widget build(Object context) {
    return FutureBuilder<List<House>>(
      future: Database.getDatabase().getHouses(),
      builder: (BuildContext context, AsyncSnapshot<List<House>> houses) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Houses')
          ),
          body: ListView.builder(
            itemCount: houses.data.length,
            itemBuilder: (BuildContext context, int index) {
              var house = houses.data[index];
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
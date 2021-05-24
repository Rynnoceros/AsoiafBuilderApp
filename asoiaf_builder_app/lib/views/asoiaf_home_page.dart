import 'package:flutter/material.dart';
import '../helpers/database.dart';
import 'houses_page.dart';

// ASOAIF Home page class
class AsoiafHomePage extends StatefulWidget {
  AsoiafHomePage({Key key}) : super(key: key) {
    Database.getDatabase().load();
  }

  @override
  _AsoiafHomePageState createState() => _AsoiafHomePageState();
}

class _AsoiafHomePageState extends State<AsoiafHomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
          <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
              child: Image.asset('images/logo.png')
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HousesPage())
                      );
                    }, 
                    child: Text('Houses')
                  ),
                ],
              )
            ),
          ]
      )
    );
  }
}
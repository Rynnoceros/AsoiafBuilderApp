import 'package:asoiaf_builder_app/widgets/stat_widget.dart';
import 'package:flutter/material.dart';
import '../models/classes/unit.dart';

// Unit display page class
class UnitDisplayPage extends StatefulWidget {
  UnitDisplayPage({Key? key}) : super(key: key) {}

  @override
  _UnitDisplayPageState createState() => _UnitDisplayPageState();
}

class _UnitDisplayPageState extends State<UnitDisplayPage> {
  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Display'),
      ),
      body: StatisticWidget(
        image: 'images/abilities/Innate.png',
        stat: '3',
      ),
      backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
    );
  }
}

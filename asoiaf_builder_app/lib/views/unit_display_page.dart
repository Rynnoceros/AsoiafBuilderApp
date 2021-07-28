import 'package:asoiaf_builder_app/models/enums/attack_type.dart';
import 'package:asoiaf_builder_app/widgets/attack_roll_widget.dart';
import 'package:asoiaf_builder_app/widgets/attack_widget.dart';
import 'package:asoiaf_builder_app/widgets/stat_widget.dart';
import 'package:flutter/material.dart';
import '../models/classes/unit.dart';
import '../models/classes/attack.dart';

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
      body: AttackWidget(
          attack: Attack.fromJSON({
        'name': 'Test',
        'type': AttackType.Melee,
        'scoreToHit': '4+',
        'attack': {3: 9, 2: 7, 1: 5}
      })),
      backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
    );
  }
}

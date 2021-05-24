import 'dart:convert';

import '../models/classes/house.dart';
import '../models/classes/unit.dart';
import '../models/classes/combat_unit.dart';
import '../models/classes/non_combat_unit.dart';
import '../models/classes/attachment.dart';
import '../models/enums/unit_type.dart';
import 'package:flutter/services.dart' show rootBundle;

// Loader class
class Database {
  static final Database _database = Database._internal();
  List<House> _houses = [];
  List<Unit> _units = [];

  Database._internal();

  factory Database() => _database;

  // Load houses from json file
  Future _loadHouses() async {
    return rootBundle.loadString('data/houses.json')
          .then((jsonHouses) {
            Map<String, dynamic> houses = jsonDecode(jsonHouses);
              for (var house in houses['houses']) {
                _houses.add(House.fromJSON(house));
              }
          });
  }

  // Load units from json file
  Future _loadUnits() async {
    return rootBundle.loadString('data/units.json')
          .then((jsonUnits) {
            Map<String, dynamic> units = jsonDecode(jsonUnits);
            for (var unit in units['units']) {
              var type = UnitType.values[unit['type']];
              switch (type) {
                case UnitType.CombatUnit: _units.add(CombatUnit.fromJSON(unit)); break;
                case UnitType.Attachment: _units.add(Attachment.fromJSON(unit)); break;
                case UnitType.NonCombatUnit: _units.add(NonCombatUnit.fromJSON(unit)); break;
              }
            }
          });
  }

  void load() {
    _loadHouses();
    _loadUnits();
  }

  Future<List<House>> getHouses() {
    return Future.value(_houses);
  }

  Future<List<Unit>> getUnits() {
    return Future.value(_units);
  }

  static Database getDatabase() {
    return _database;
  }
}
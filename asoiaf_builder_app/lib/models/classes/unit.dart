import '../enums/unit_type.dart';
import '../classes/house.dart';

// Unit class
class Unit {
  // Attributes
  final String _name;
  final String _description;
  final UnitType _type;
  final int _cost;
  final House _house;
  final String _frontPicture;
  final String _backPicture;

  // Constructor
  Unit.fromJSON(Map<String, dynamic> json)
      : _name = json['name'],
        _description = json['description'],
        _type = UnitType.values[json['type']],
        _cost = json['cost'],
        _house = House.fromJSON(json['house']),
        _frontPicture = json['frontPicture'],
        _backPicture = json['backPicture'];

  // Getters
  String getName() {
    return _name;
  }

  String getDescription() {
    return _description;
  }

  UnitType getType() {
    return _type;
  }

  int getCost() {
    return _cost;
  }

  House getHouse() {
    return _house;
  }

  String getFrontPicture() {
    return _frontPicture;
  }

  String getBackPicture() {
    return _backPicture;
  }
}
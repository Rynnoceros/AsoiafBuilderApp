import '../enums/ability_type.dart';
import '../interfaces/ability_interface.dart';

// Ability class
class Ability implements AbilityInterface {
  // Attributes
  String _name;
  AbilityType _type;
  String _description;

  // Constructor
  Ability.fromJSON(Map<String, dynamic> json)
      : _name = json['name'],
        _type = json['type'],
        _description = json['description'];

  // Getters
  AbilityType getType() {
    return _type;
  }

  String getDescription() {
    return _description;
  }

  String getName() {
    return _name;
  }
}
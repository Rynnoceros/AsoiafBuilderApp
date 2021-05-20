import '../enums/ability_type.dart';
import '../interfaces/ability_interface.dart';

// Ability class
class Ability implements AbilityInterface {
  // Attributes
  AbilityType _type;
  String _description;

  // Constructor
  Ability({AbilityType type, String description}) {
    setType(type);
    setDescription(description);
  }

  // Getter and setter for type
  AbilityType getType() {
    return _type;
  }

  void setType(type) {
    _type = type;
  }

  // Getter and setter for description
  String getDescription() {
    return _description;
  }

  void setDescription(description) {
    _description = description;
  }
}
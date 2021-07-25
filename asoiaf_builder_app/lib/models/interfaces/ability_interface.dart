import '../enums/ability_type.dart';

// Interface that describes an attack
class AbilityInterface {
  String getName() {
    throw ("not implemented");
  }

  AbilityType getType() {
    throw ("not implemented");
  }

  String getDescription() {
    throw ("not implemented");
  }
}

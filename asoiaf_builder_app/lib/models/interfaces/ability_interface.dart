import '../enums/ability_type.dart';

// Interface that describes an attack
class AbilityInterface {
  String getName() {}
  AbilityType getType() {}
  String getDescription() {}
}
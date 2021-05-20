import '../enums/combat_type.dart';

// Combatable unit interface
class CombatableUnit {
  // List all the attacks the unit can make
  List<Attack> attacks() {}

  // Number of miniatures in the unit
  int numberOfMen() {}

  // Number of wounds assignable to a miniature
  int woundsPerMen() {}

  // Defense value
  int defense() {}

  // Morale value
  int morale() {}

  // Speed Value
  int speed() {}

  // List of abilities that a unit behaves
  List<Ability> abilities() {}

  // The type of the combat unit
  CombatType type() {} 
}
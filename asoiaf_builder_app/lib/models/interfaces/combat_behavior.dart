import '../enums/combat_type.dart';
import '../classes/attack.dart';
import '../classes/ability.dart';

// Combatable unit interface
class CombatBehavior {
  final List<Attack> _attack = [];
  final int _numberOfMen;
  final int _woundsPerMen;
  final int _defense;
  final int _morale;
  final int _speed;
  final List<Ability> _abilities = [];
  final CombatType _combatType;

  // Constructor
  CombatBehavior.fromJSON(Map<String, dynamic> json)
      : _numberOfMen = json['numberOfMen'],
        _woundsPerMen = json['woundsPerMen'],
        _defense = json['defense'],
        _morale = json['morale'],
        _speed = json['speed'],
        _combatType = CombatType.values[json['type']];

  // List all the attacks the unit can make
  List<Attack> attacks() {
    throw ("not implemented");
  }

  // Number of miniatures in the unit
  int numberOfMen() {
    throw ("not implemented");
  }

  // Number of wounds assignable to a miniature
  int woundsPerMen() {
    throw ("not implemented");
  }

  // Defense value
  int defense() {
    throw ("not implemented");
  }

  // Morale value
  int morale() {
    throw ("not implemented");
  }

  // Speed Value
  int speed() {
    throw ("not implemented");
  }

  // List of abilities that a unit behaves
  List<Ability> abilities() {
    throw ("not implemented");
  }

  // The type of the combat unit
  CombatType type() {
    throw ("not implemented");
  }
}

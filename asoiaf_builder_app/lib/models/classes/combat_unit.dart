import 'unit.dart';
import '../enums/unit_type.dart';
import '../interfaces/combat_behavior.dart';
import 'house.dart';

// Combat unit class
class CombatUnit extends Unit {
  // Attributes
  CombatBehavior _combatable;

  // Constructor
  CombatUnit({CombatBehavior combatable, String name, String description, UnitType type, 
              int cost, House house, String frontPicture, String backPicture}) : 
              super(name:name, description: description, type:type, cost:cost, house:house, 
                    frontPicture: frontPicture, backPicture: backPicture) {
    setCombatable(combatable);
  }

  // Getter and setter for combatable
  CombatBehavior getCombatable() {
    return _combatable;
  }

  void setCombatable(CombatBehavior combatable) {
    _combatable = combatable;
  }
}
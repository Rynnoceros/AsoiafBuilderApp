import 'unit.dart';
import '../interfaces/combat_behavior.dart';

// Combat unit class
class CombatUnit extends Unit {
  // Attributes
  final CombatBehavior _combat_behavior;

  // Constructor
  CombatUnit.fromJSON(Map<String, dynamic> json) 
    : _combat_behavior = CombatBehavior.fromJSON(json['combat_behavior']),
      super.fromJSON(json);
  
  // Getter and setter for combatable
  CombatBehavior getCombatBehavior() {
    return _combat_behavior;
  }
}
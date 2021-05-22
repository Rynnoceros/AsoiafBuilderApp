import '../enums/attack_type.dart';
import '../interfaces/attack_interface.dart';

// Attack class
class Attack implements AttackInterface {

  // attributes
  AttackType _type;
  Map<int, int> _attack;
  
  // Constructor
  Attack({AttackType type, Map<int, int> attack}) {
    setType(type);
    setAttack(attack);
  }

  // Getter and Setter for type
  AttackType getType() {
    return _type;
  }

  void setType(AttackType type) {
    _type = type;
  }
  
  // Getter and setter for attack
  Map<int, int> getAttack() {
    return _attack;
  }

  void setAttack(Map<int, int> attack) {
    _attack = attack;
  }
}
import '../enums/attack_type.dart';
import '../interfaces/attack_interface.dart';
import 'dices_to_roll.dart';

// Attack class
class Attack implements AttackInterface {

  // attributes
  AttackType _type;
  List<DicesToRoll> _attack;
  
  // Constructor
  Attack({AttackType type, List<DicesToRoll> attack}) {
    setType(type);
    setAttackValue(attack);
  }

  // Getter and Setter for type
  AttackType type() {
    return _type;
  }

  void setType(AttackType type) {
    _type = type;
  }
  
  // Getter and setter for attack
  List<DicesToRoll> attackValue() {
    return _attack;
  }

  void setAttackValue(List<DicesToRoll> attack) {
    _attack = attack;
  }
}
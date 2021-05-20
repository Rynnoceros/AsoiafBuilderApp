import '../enums/attack_type.dart';
import '../classes/dices_to_roll.dart';

// Interface that describes an attack
class AttackInterface {
  AttackType getType() {}
  List<DicesToRoll> getAttack() {}
}
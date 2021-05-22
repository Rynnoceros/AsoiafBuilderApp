import '../enums/attack_type.dart';

// Interface that describes an attack
class AttackInterface {
  AttackType getType() {}
  Map<int, int> getAttack() {}
}
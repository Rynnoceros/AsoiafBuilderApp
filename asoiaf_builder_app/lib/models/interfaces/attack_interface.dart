import '../enums/attack_type.dart';

// Interface that describes an attack
class AttackInterface {
  AttackType getType() {
    throw ("not implemented");
  }

  Map<int, int> getAttack() {
    throw ("not implemented");
  }

  String getScoreToHit() {
    throw ("not implemented");
  }
}

import '../enums/attack_type.dart';
import '../interfaces/attack_interface.dart';

// Attack class
class Attack implements AttackInterface {
  // attributes
  String _name;
  AttackType _type;
  String _scoreToHit;
  Map<int, int> _attack;

  // Constructor
  Attack.fromJSON(Map<String, dynamic> json)
      : _name = json['name'],
        _type = json['type'],
        _scoreToHit = json['scoreToHit'],
        _attack = json['attack'];

  // Getters
  String getName() {
    return _name;
  }

  AttackType getType() {
    return _type;
  }

  Map<int, int> getAttack() {
    return _attack;
  }

  String getScoreToHit() {
    return _scoreToHit;
  }
}

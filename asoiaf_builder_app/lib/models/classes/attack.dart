import '../enums/attack_type.dart';
import '../interfaces/attack_interface.dart';

// Attack class
class Attack implements AttackInterface {

  // attributes
  AttackType _type;
  int _scoreToHit;
  Map<int, int> _attack;
  
  // Constructor
  Attack(Map<String, dynamic> json) 
    : _type = json['type'],
      _scoreToHit = json['scoreToHit'],
      _attack = json['attack'];

  // Getters
  AttackType getType() {
    return _type;
  }

  Map<int, int> getAttack() {
    return _attack;
  }

  int getScoreToHit() {
    return _scoreToHit;
  }
}
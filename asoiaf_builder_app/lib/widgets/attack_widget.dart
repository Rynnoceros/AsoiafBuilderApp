import 'package:asoiaf_builder_app/models/classes/ability.dart';
import 'package:asoiaf_builder_app/models/classes/attack.dart';
import 'package:asoiaf_builder_app/widgets/attack_roll_widget.dart';
import 'package:flutter/material.dart';

// Widget to display an attack. Should display :
//  * Attack name
//  * Attack rolls
class AttackWidget extends StatelessWidget {
  AttackWidget({required this.attack, Key? key}) : super(key: key);

  final Attack attack;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset('images/abilities/AttackDisplay.png',
            width: 256, height: 80),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 210, 0),
            child: Image.asset(
                'images/abilities/${this.attack.getType().toString().split(".")[1]}Attack.png',
                width: 93,
                height: 95)),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 75, 20, 0),
            child: AttackRollWidget(
                diceRolls: this.attack.getAttack(),
                scoreToHit: this.attack.getScoreToHit())),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text(
              this.attack.getName().toUpperCase(),
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}

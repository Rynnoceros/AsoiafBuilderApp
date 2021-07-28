import 'package:asoiaf_builder_app/helpers/asoiaf_theme.dart';
import 'package:flutter/material.dart';

// Widget to display attack roll
// Should display:
//  * The score to hit
//  * Number of dices to roll according to the ranks

class AttackRollWidget extends StatelessWidget {
  AttackRollWidget(
      {required this.scoreToHit, required this.diceRolls, Key? key})
      : super(key: key);

  final String scoreToHit;
  final Map<int, int> diceRolls;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Image.asset('images/abilities/AttackRoll.png', width: 157, height: 50),
      Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 105, 0),
          child: Text(
            this.scoreToHit,
            style: AsoiafTheme.textStyle,
          )),
      Padding(
          padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: this.getDiceRolls()))
    ]);
  }

  // Get all the containers with dice rolls
  List<Widget> getDiceRolls() {
    List<Widget> toReturn = [];

    for (int i = this.diceRolls.length; i > 0; --i) {
      toReturn.add(
        Container(
            alignment: Alignment.center,
            height: 25,
            width: 25,
            margin: EdgeInsets.fromLTRB(2, 0, 2, 0),
            decoration: BoxDecoration(
                color: i == this.diceRolls.length
                    ? Color.fromRGBO(175, 240, 105, 1.0)
                    : i == (this.diceRolls.length - 1)
                        ? Color.fromRGBO(240, 180, 105, 1.0)
                        : Color.fromRGBO(255, 40, 40, 1.0),
                border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Text(this.diceRolls[i].toString(),
                textAlign: TextAlign.center, style: AsoiafTheme.textStyle)),
      );
    }

    return toReturn;
  }
}

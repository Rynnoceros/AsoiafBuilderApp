import 'package:flutter/material.dart';

// Widget that will be used to display the statistics of a unit
// Should display an image with a number inside
class StatisticWidget extends StatelessWidget {
  StatisticWidget(
      {required this.image,
      required this.stat,
      EdgeInsets? textPadding,
      Key? key})
      : super(key: key) {
    if (textPadding != null)
      this.textPadding = textPadding;
    else
      this.textPadding = EdgeInsets.fromLTRB(0, 0, 0, 0);
  }

  final String image;
  final String stat;
  late EdgeInsets textPadding;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Image.asset(this.image, width: 100, height: 63),
      Padding(
          padding: textPadding,
          child: Text(
            this.stat,
            style: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1.0),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )),
    ]);
  }
}

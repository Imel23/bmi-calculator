import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onTap;
  int flex = 1;
  ReusableCard(
      {required this.colour, this.cardChild, this.onTap, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: colour, borderRadius: BorderRadius.circular(10.0)),
          child: cardChild,
        ),
      ),
    );
  }
}

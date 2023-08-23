import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  ReUsableCard({required this.colour,required this.cardChild,required this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Expanded(
          child: Container(
            child: cardChild,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colour,
            ),
            margin: EdgeInsets.all(15.0),
          ),
      ),
    );
  }
}
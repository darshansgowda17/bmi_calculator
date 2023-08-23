import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("RESULTS",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        ),
        body: ReUsableCard(
          colour: inactiveCardColor,
          cardChild: Container(),
          onPress: (){},
        ),
      ),
    );
  }
}

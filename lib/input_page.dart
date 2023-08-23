import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/icon_text.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget{
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType gender = GenderType.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReUsableCard(onPress: (){
                  setState(() {
                    gender = GenderType.male;
                  });
                },colour: (gender == GenderType.male)?(cardColor):inactiveCardColor, cardChild: IconText(
                  title: "MALE",
                  icon: Icons.male,
                ),),
                ReUsableCard(onPress: (){
                  setState(() {
                    gender = GenderType.female;
                  });
                },colour: (gender == GenderType.female)?(cardColor):inactiveCardColor, cardChild: IconText(
                  title: "FEMALE",
                  icon: Icons.female,
                  ),
                ),
              ],
            ),
          ),
          ReUsableCard(colour: cardColor,cardChild: Container(),onPress: (){},),
          Expanded(
            child: Row(
              children: [
                ReUsableCard(colour: cardColor,cardChild: Container(),onPress: (){},),
                ReUsableCard(colour: cardColor,cardChild: Container(),onPress: (){},),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
          ),
        ],
      )

    );
  }
}


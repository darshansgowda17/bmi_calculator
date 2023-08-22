import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                Cardd(colour: cardColor,cardChild: Container(
                  child: Icon(
                    Icons.male,
                    color: Colors.white,
                  ),
                ),),
                Cardd(colour: cardColor, cardChild: Container(
                  child: Icon(
                    Icons.female,
                    color: Colors.white,
                  ),
                ),),
              ],
            ),
          ),
          Cardd(colour: cardColor,cardChild: Container()),
          Expanded(
            child: Row(
              children: [
                Cardd(colour: cardColor,cardChild: Container(),),
                Cardd(colour: cardColor,cardChild: Container(),),
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

class Cardd extends StatelessWidget {
  Cardd({required this.colour,required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
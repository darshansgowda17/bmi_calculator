import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/icon_text.dart';
import 'package:bmi_calculator/result_page.dart';

const bottomContainerHeight = 80.0;
const cardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
enum GenderType {
  male,
  female,
}
const boldStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
const normalStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class InputPage extends StatefulWidget{
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType gender = GenderType.male;
  int height=121;
  int weight = 60;
  int age = 20;
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
          ReUsableCard(colour: cardColor,cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text("HEIGHT",
                  style: normalStyle,
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.ideographic,
                children: [
                  Text(height.toString(),
                    style: boldStyle,
                  ),
                  Text("cm",
                    style: normalStyle,
                  )
                ],
              ),
              Slider(value: height.toDouble(),
                  min: 120,
                  max: 220,
                  activeColor: Color(0xFFBE1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue){
                setState(() {
                  height = newValue.toInt();
                });
              })
            ],
          ),onPress: (){},),
          Expanded(
            child: Row(
              children: [
                ReUsableCard(colour: cardColor,cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WEIGHT",
                      style: normalStyle,
                    ),
                    SizedBox(height: 3,),
                    Text(weight.toString(),
                      style: boldStyle,
                    ),
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleButton(icon: FontAwesomeIcons.plus,func: (){
                          setState(() {
                            weight++;
                          });
                        }),
                        SizedBox(width: 10.0,),
                        CircleButton(icon: FontAwesomeIcons.minus,func: (){
                          setState(() {
                            weight--;
                          });
                        },),
                      ],
                    )
                  ],
                ),onPress: (){},),
                ReUsableCard(colour: cardColor,cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("AGE",
                      style: normalStyle,
                    ),
                    SizedBox(height: 3,),
                    Text(age.toString(),
                      style: boldStyle,
                    ),
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleButton(icon: FontAwesomeIcons.plus,func: (){
                          setState(() {
                            age++;
                          });
                        }),
                        SizedBox(width: 10.0,),
                        CircleButton(icon: FontAwesomeIcons.minus,func: (){
                          setState(() {
                            age--;
                          });
                        },),
                      ],
                    )
                  ],
                ),onPress: (){},),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultPage()));
            },
            child: Container(
              child: Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    fontSize: 25,
                  )
                ),
              ),
              width: double.infinity,
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              height: bottomContainerHeight,
            ),
          ),
        ],
      )
    );
  }
}

class CircleButton extends StatelessWidget {
  CircleButton({required this.icon,required this.func});
  final IconData icon;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: func,
    );
  }
}



import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult,required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("BMI CALCULATOR"
            ),
          ),),
        body: Column(
          children: [
            Expanded(child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: titleStyle,
              ),
            ),),
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText,
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF24D876),
                      fontWeight: FontWeight.bold,
                    ),),
                    Text(bmiResult,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                    ),),
                    Center(
                      child: Text(interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF1D1E33),
                ),
                margin: EdgeInsets.all(15.0),
              ),
            ),
            Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> BMICalculator()));
              },
              child: Container(
                child: Center(
                  child: Text(
                        "RE-CALCULATE",
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
            ),)

          ],
        )


      ),
    );
  }
}

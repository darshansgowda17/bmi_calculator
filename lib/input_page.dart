import 'package:flutter/material.dart';

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
      body: Row(
        children: [
          Expanded(child: Cardd()),
          Expanded(child: Cardd()),
        ],
      ),
    );
  }
}

class Cardd extends StatelessWidget {
  const Cardd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1D1E33),
      height: 200,
      width: 150,
      margin: EdgeInsets.all(15.0),
    );
  }
}
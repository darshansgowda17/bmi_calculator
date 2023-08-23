import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  IconText({required this.title,required this.icon});

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(height: 20.0,),
        Text(title, style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98)
        ),),
      ],
    );
  }
}
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:win/theme.dart';
// import 'package:flutter_auth/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press3;
  final Color color, textColor;
  final VoidCallback press;
  const RoundedButton({
    required this.text,
    required this.press3,
    this.color = AppColors.secondary,
    this.textColor = Colors.white, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onPressed: press,
      // it should be here press instead of () {} i will see later what is the problem  
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 26),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
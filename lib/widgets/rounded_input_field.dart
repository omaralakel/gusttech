import 'dart:html';

import 'package:flutter/material.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
import 'package:win/theme.dart';
// import 'package:flutter_auth/components/text_field_container.dart';
// import 'package:flutter_auth/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) {
                if(value!.isEmpty ||!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2-4}$').hasMatch(value)) {
                  return "Please Enter Correct Name";
                } else{return null;}
              },
        onChanged: onChanged,
        cursorColor: AppColors.secondary,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: AppColors.secondary
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

















class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: const Color(0xFFF1E6FF),
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
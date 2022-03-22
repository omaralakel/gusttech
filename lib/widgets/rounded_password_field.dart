import 'package:flutter/material.dart';
import 'package:win/widgets/rounded_input_field.dart';
// import 'package:flutter_auth/components/text_field_container.dart';
// import 'package:flutter_auth/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: const Color(0xFF6F35A5),
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Color(0xFF6F35A5),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color(0xFF6F35A5),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:win/widgets/rounded_input_field.dart';

import '../theme.dart';
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
        cursorColor: AppColors.secondary,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: AppColors.secondary,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: AppColors.secondary,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
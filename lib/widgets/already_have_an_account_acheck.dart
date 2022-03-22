import 'package:flutter/material.dart';
// import 'package:flutter_auth/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccountCheck({
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? NoAccount : "Already have an Account ? ",
          style: const TextStyle(color: Color(0xFF6F35A5)),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              color: Color(0xFF6F35A5),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  String get NoAccount => "Don’t have an Account ? ";
}
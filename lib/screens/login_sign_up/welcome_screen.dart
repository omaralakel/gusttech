import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:win/screens/login_sign_up/log_in_instructor.dart';
import 'package:win/screens/login_sign_up/two_buttons.dart';

import '../../widgets/rounded_button.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}














class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "WELCOME TO MORSHED",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
            ),
            Image.asset("../../../assets/images/morshed.jpg", fit: BoxFit.fill,),
            SizedBox(height: size.height * 0.05),
            // SvgPicture.asset(
            //   "assets/icons/chat.svg",
            //   height: size.height * 0.45,
            // ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press3: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) {return LoginScreen(); }));
              }, press: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) {return LoginScreen(); })); },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: Color(0xFFF1E6FF),
              textColor: Colors.black,
              press3: () {
                Navigator.of(
                  context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const TwoButtons();
                    },
                  ),
                );
              }, press: () { Navigator.of(
                  context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const TwoButtons(); },)
            );
              })],
        ),
      ),
    );
  }
}





















class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   child: Image.asset(
          //     "assets/images/main_top.png",
          //     width: size.width * 0.3,
          //   ),
          // ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   child: Image.asset(
          //     "assets/images/main_bottom.png",
          //     width: size.width * 0.2,
          //   ),
          // ),
          child,
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:win/screens/login_sign_up/two_buttons.dart';
import 'package:win/screens/login_sign_up/welcome_screen.dart';

import '../../pages/messages_page.dart';
import '../../widgets/already_have_an_account_acheck.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/rounded_input_field.dart';
import '../../widgets/rounded_password_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign in"),),
      body: Body(),
    );
  }
}














class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,),
            const Text(
              "Welcome Back",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 17,),
            const Text(
              "Sign in with your email and password ",
              style: TextStyle(),
              textAlign: TextAlign.center
            ),
            const Text(
              "or continue with social media",
              style: TextStyle(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 72, vertical: 70),
              child: Image.asset("assets/images/morsheds.png", fit: BoxFit.fill,),
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Sign in",
              press3: () {}, press: () { Navigator.of(context).push(MaterialPageRoute(builder: ((context) => MessagesPage())));},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.of(
                  context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return (const TwoButtons());
                    },
                  ),
                );
              },
            ),
          ],
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
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   child: Image.asset(
          //     "assets/images/main_top.png",
          //     width: size.width * 0.35,
          //   ),
          // ),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   child: Image.asset(
          //     "assets/images/login_bottom.png",
          //     width: size.width * 0.4,
          //   ),
          // ),
          child,
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:square_in_app_payments/in_app_payments.dart';
import 'package:square_in_app_payments/models.dart';

import '../../widgets/already_have_an_account_acheck.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/rounded_input_field.dart';
import '../../widgets/rounded_password_field.dart';
import "../../theme.dart";
import 'login_screen.dart';
import 'package:flutter_svg/svg.dart';

class SignUpInstructor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up"),),
      body: Body(),
    );
  }
}









class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void _pay() {
    InAppPayments.setSquareApplicationId("sandbox-sq0idb-Sx0mSDQF9dVa7AtGiKKntw");
    InAppPayments.startCardEntryFlow(
      onCardNonceRequestSuccess: _cardNonceRequestSuccess,
      onCardEntryCancel: _cardEntryCancel,
    );
  }


  void _cardEntryCancel() {
    // Cancelled Card Entry
  }


  void _cardNonceRequestSuccess(CardDetails result) {
    print(result.nonce);

    InAppPayments.completeCardEntry(onCardEntryComplete: _cardEntryComplete);
  }


  void _cardEntryComplete() {
    // Success
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30,),
            const Text(
              "Register Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 13,),
            const Text(
              "Complete your details or continue",
              style: TextStyle(),
              textAlign: TextAlign.center
            ),
            const Text(
              "with social media",
              style: TextStyle(),
            ),
            SizedBox(height: size.height * 0.15),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            WidgetsForSignUp(),
            RoundedButton(
              text: "Continue",
              press: () {
                _pay;
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {return const SecondSignupPage(); }));
                // if(formKey.currentState!.validate()) {final snackBar = SnackBar(content: Text("Submitting Form")); _scaffoldKey.currentState!.showSnackBar(snackBar);}
              }, press3: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
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
      height: size.height,
      width: double.infinity,
      // Here i can use size.width but use double.infinity because both work as a same
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   child: Image.asset(
          //     "assets/images/signup_top.png",
          //     width: size.width * 0.35,
          //   ),
          // ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   child: Image.asset(
          //     "assets/images/main_bottom.png",
          //     width: size.width * 0.25,
          //   ),
          // ),
          child,
        ],
      ),
    );
  }
}







class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(
                color: AppColors.secondary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}








class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocalIcon({
    required this.iconSrc,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color(0xFFF1E6FF),
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}

























class WidgetsForSignUp extends StatelessWidget {
  // const WidgetsForSignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedInputField(hintText: "Full Name", onChanged: (value) {})
      ],
    );
  }
}








class SecondSignupPage extends StatelessWidget {
  const SecondSignupPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LanguageSelection(),
            const SizedBox(height: 50,),
            ImagePicker(),
            // AgeSelection(),

      
          ],
        ),
      ),
    );
  }
}






class LanguageSelection extends StatefulWidget {
 LanguageSelection({ Key? key }) : super(key: key);



  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  final items = ["English","Arabic","Chinese","Spanish","Portuguese","French","Hindi","Russian","Japanese","German","Swedish","Indonesian"];
  int index = 0;

  late FixedExtentScrollController scrollController;


  String? value;

@override
  void initState() {
    super.initState();
    scrollController = FixedExtentScrollController(initialItem: index);
  }



  @override
  void dispose() {
    scrollController.dispose();

    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text("Your language: ", style: TextStyle(fontSize: 17, color: Colors.blueGrey),
                    ),
                  ),
                Column(
                  children: [
                  Center(
                    child: CupertinoButton(borderRadius: BorderRadius.circular(35),color: Colors.lightBlue,padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),child: Text("Language: " + items[index]),
                    onPressed: () {
                      scrollController.dispose();
                      scrollController = FixedExtentScrollController(initialItem: index);
                      showCupertinoModalPopup(context: context, builder: (context) => CupertinoActionSheet(
                        actions: [buildPicker()],
                        cancelButton: CupertinoActionSheetAction(child: Text("Done"), onPressed: () => Navigator.pop(context),),
                      ));
                    }),
                  )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget buildPicker() =>  SizedBox(
                  height: 350,
                  child: CupertinoPicker(
                    scrollController: scrollController,
                    looping: true,
                    itemExtent: 50,
                    selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                      background: CupertinoColors.activeBlue.withOpacity(0.2),
                    ),
                    children:
                      items.map((item) => Center(child: Text(item,
                      style: TextStyle(fontSize: 15),
                      ),)).toList(),
                      onSelectedItemChanged: (index) {
                        setState(() => this.index = index);

                        final item = items[index];
                        print("Selected language $item");
                  }
                ),
                );
}































































class AgeSelection extends StatefulWidget {
 AgeSelection({ Key? key }) : super(key: key);



  @override
  State<AgeSelection> createState() => _AgeSelectionState();
}

class _AgeSelectionState extends State<AgeSelection> {

DateTime dateTime = DateTime.now();



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoDialogAction(child: buildDataPicker()),
          const SizedBox(height: 24,),
          // ButtonWidget: () => Utils.showSheet(context, child: buildDataPicker(), onClick: () {Navigator.pop(context)})
        ],
      ),
    );
  }
  Widget buildDataPicker() =>  SizedBox(
    height: 100,
    
    child: CupertinoDatePicker(
                    initialDateTime: dateTime,
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (dateTime) => setState(() {
                      this.dateTime = dateTime; 
                    }),
                  ),
  );
}













class ImagePicker extends StatefulWidget {
  const ImagePicker({ Key? key }) : super(key: key);

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {


  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(child: Text("Select your profile image",),
      onPressed: () {},
      
      ),
    );
  }
}
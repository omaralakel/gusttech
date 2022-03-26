import 'package:flutter/material.dart';
import 'package:win/screens/login_sign_up/log_in_student.dart';
import 'package:win/screens/login_sign_up/sign_up_instructor.dart';
import 'package:win/screens/login_sign_up/sign_up_student.dart';

import 'log_in_instructor.dart';

class TwoButtons extends StatefulWidget {
  const TwoButtons({ Key? key }) : super(key: key);

  @override
  State<TwoButtons> createState() => _TwoButtonsState();
}

class _TwoButtonsState extends State<TwoButtons> {

  // bool _isElevated = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(height: 150,),
          FirstButton(),
          SizedBox(height: 80,),
          SecondButton(),
        ],
      ),
    );
  }
}










class FirstButton extends StatefulWidget {
  const FirstButton({ Key? key }) : super(key: key);

  @override
  State<FirstButton> createState() => _FirstButtonState();
}


bool _isElevated1 = true;

class _FirstButtonState extends State<FirstButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isElevated1 = !_isElevated1;
//                   Future.delayed(const Duration(milliseconds: 500), () {
//   setState(() {
//                   _isElevated1 = !_isElevated1;
//   });
// });
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                     return SignUpClient();
                  
                  }));
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                child: const Center(
                  child: Text(
                    "Sign Up as a Beneficial",
                    textAlign: TextAlign.center ,
                    style: TextStyle(fontSize: 20),),
                ),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: _isElevated1 ? [
                    BoxShadow(
                      offset: const Offset(4, 4),
                      color: (Colors.grey[500])!,
                      blurRadius: 15,
                      spreadRadius: 1, 
                    ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  )
                  ] : null
                ),
              ),
            ),
    );
            
  }
}







class SecondButton extends StatefulWidget {
  const SecondButton({ Key? key }) : super(key: key);

  @override
  State<SecondButton> createState() => _SecondButtonState();
}


bool _isElevated2 = true;

class _SecondButtonState extends State<SecondButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isElevated2 = !_isElevated2;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                     return SignUpInstructor();
                  }));
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                child: const Center(
                  child: Text(
                    "Sign Up as an Instructor",
                    textAlign: TextAlign.center ,
                    style: TextStyle(fontSize: 20),),
                ),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: _isElevated2 ? [
                    BoxShadow(
                      offset: const Offset(4, 4),
                      color: (Colors.grey[500])!,
                      blurRadius: 15,
                      spreadRadius: 1, 
                    ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  )
                  ] : null
                ),
              ),
            ),
    );
            
  }
}












// class TwoButtons extends StatefulWidget {
//   const TwoButtons({ Key? key }) : super(key: key);

//   @override
//   State<TwoButtons> createState() => _TwoButtonsState();
// }

// class _TwoButtonsState extends State<TwoButtons> {
//   int selected = 0;

//   // Navigator.of(context).push(MaterialPageRoute(builder: (context) {return SignUpClient();})),

//   Widget customRadio(String text, index, padding) {
//     return OutlineButton(
      
//       onPressed: () {
//         setState(() {
//           selected = index;
          
//         });
//       },
//       child: Text(
//         text,
//         style: TextStyle(
//           fontSize: 30,
//           color: (selected == index) ? Colors.blue : Colors.blueGrey,
//         ),
//         ),
//         padding: EdgeInsets.symmetric(horizontal: padding, vertical: 20),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//         borderSide: BorderSide(color: (selected == index) ? Colors.blue : Colors.blueGrey,),
//       );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Create an account"), centerTitle: true,),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               customRadio("Client", 1, 150),
//               const Padding(padding: EdgeInsets.symmetric(vertical: 30)),
//               customRadio("Instructor", 2, 125),
//               ],
//           ),
//         ),
//       ),
//     );
//   }
// }







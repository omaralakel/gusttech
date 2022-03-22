import 'dart:html';

import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
import 'package:win/screens/login_sign_up/log_in_instructor.dart';
import 'package:win/screens/login_sign_up/login_screen.dart';
import 'package:win/screens/login_sign_up/sign_up_student.dart';
import 'package:win/screens/login_sign_up/two_buttons.dart';
import 'package:win/screens/login_sign_up/welcome_screen.dart';
import 'package:win/screens/screens.dart';
import 'package:win/screens/select_user_screen.dart';
import 'package:win/theme.dart';

import 'app.dart';

void main() {
  final client = StreamChatClient("xe7pkesmb3ku");
  runApp(MyApp(
    client: client,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.client}) : super(key: key);

  // This widget is the root of your application.
  final StreamChatClient client;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().light,
      darkTheme: AppTheme().dark,
      themeMode: ThemeMode.light,
      title: 'Chatter',
      builder: (context, child) {
        return StreamChatCore(
          client: client,
          child: child!
          );
      },
      home: SignUpClient(),
    );
  }
}

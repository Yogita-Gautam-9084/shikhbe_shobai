import 'package:flutter/material.dart';
import 'package:shikhbe_shobai/confirm_screen.dart';
import 'package:shikhbe_shobai/shikhbe_shobai.dart';
import 'package:shikhbe_shobai/tutorial.dart';

import 'Sign_upScreen.dart';
import 'continue_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // home: const Screen1(),
      // home: const TutorialScreen(),
      home:  SignUpScreen(),
      // home: const ContinueScreen(),
      // home: const ConfirmScreen(),
    );


  }
}


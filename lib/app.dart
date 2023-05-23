import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'package:with_me/home_page/ui/home_page.dart';
import 'package:with_me/host_page.dart';
import 'package:with_me/new%20screens/Login_Screen.dart';
import 'package:with_me/new%20screens/completeRegister.dart';
import 'package:with_me/new%20screens/signup_screen.dart';
//import 'package:with_me/register_page/complete_register_page.dart';
import 'package:with_me/splash/splash_page.dart';
import 'package:with_me/welcome_page/welcome_page.dart';

class TheApp extends StatelessWidget {
  const TheApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        ' WelcomePage': (context) => const WelcomePage(),
        'SignupScreen': (context) => const SignupScreen(),
        'LoginScreen': (context) => LoginScreen(),
        'CompleteRegister': (context) => CompleteRegister(),
        'HostPage': (context) => const HostPage(),
        
      },
    );
  }
}

import 'package:flutter/material.dart';

import 'package:with_me/new%20screens/Login_Screen.dart';
import 'package:with_me/new%20screens/signup_screen.dart';
import 'package:with_me/register_page/check_register_type_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/walk_throw_bg.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Let\'s Go',
                style: TextStyle(color: Colors.white, fontSize: 55),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'WithYou  every where',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .45,
              ),
              _logInOrRegisterWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logInOrRegisterWidget() {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      // padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: InkWell(
              onTap: _onTapLogIn,
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  color: Colors.white,
                  child: const Text(
                    'Log In',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            )),
            Expanded(
                child: InkWell(
              onTap: _onTapRegister,
              child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  color: Color(0xff5661f1),
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            )),
          ]),
    );
  }

  void _onTapLogIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  void _onTapRegister() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const RegisterTypePage()));
  }
}

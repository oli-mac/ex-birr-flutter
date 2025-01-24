import 'package:flutter/material.dart';

import '../login/login_screen.dart';
import '../registraton/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.blue[800]!,

                  Color(0xff281537),
                ]
            )
        ),
        child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 200.0),
                child: Image(image: AssetImage('assets/images/logo-light-no-bg.png')),
              ),
              const SizedBox(
                height: 100,
              ),
              const Text('Welcome Back',style: TextStyle(
                  fontSize: 30,
                  color: Colors.white
              ),),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const loginScreen()));
                },
                child: Container(
                  height: 53,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(child: Text('SIGN IN',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),),
                ),
              ),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RegestrationScreen()));
                },
                child: Container(
                  height: 53,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(child: Text('SIGN UP',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),),
                ),
              ),
              const Spacer(),
              const Text('Login with Social Media',style: TextStyle(
                  fontSize: 17,
                  color: Colors.white
              ),),//
              const Image(image: AssetImage('assets/images/social.png')),
              const SizedBox(height: 12,),

            ]
        ),
      ),

    );
  }
}
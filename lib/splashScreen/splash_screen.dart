import 'dart:async';
import 'package:drivers_app/authentication/login_screen.dart';
import 'package:drivers_app/authentication/signup_screen.dart';
import 'package:drivers_app/global/global.dart';
import 'package:drivers_app/mainScreens/main_screen.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {

  startTimer(){
    Timer(const Duration(seconds:1),() async {
      if(fAuth.currentUser !=null){
        currentFirebaseUser = fAuth.currentUser;
        Navigator.push(context, MaterialPageRoute(builder: (c)=> MainScreen()));
      } else {
        //send user to main screen
        Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("img/logo1.png"),
              const SizedBox(height: 10,),
              const Text(
                "Ship Driver",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}

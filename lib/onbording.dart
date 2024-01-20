import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/signin.dart';
import 'package:page_transition/page_transition.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  Timer? timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer(Duration(seconds: 3), () {
      print("call back");
      Navigator.of(context).push(
        PageTransition(
            duration: Duration(seconds: 2),
            child: SignIn(),
            type: PageTransitionType.fade),
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 177),
                child: Container(
                  width: MediaQuery.of(context).size.width - 56,
                  child: Image(
                    image: AssetImage('assets/images/+logo.png'),
                    // width: MediaQuery.of(context).size.width - 120,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "D O C T O R",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Averia Sans Libre',
                    color: const Color.fromRGBO(25, 142, 182, 1)),
              ),
              Text(
                "C H A N N E L I N G",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Averia Sans Libre',
                    color: const Color.fromRGBO(25, 142, 182, 1)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

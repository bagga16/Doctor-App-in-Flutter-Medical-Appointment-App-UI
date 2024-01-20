import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/Message2.dart';
import 'package:medical_appoinment_booking_app/video_calling.dart';
import 'package:page_transition/page_transition.dart';

class Calling extends StatefulWidget {
  const Calling({super.key});

  @override
  State<Calling> createState() => _CallingState();
}

class _CallingState extends State<Calling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //  color: const Color.fromRGBO(25, 142, 182, 1),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(25, 142, 182, 1),
                Color.fromRGBO(25, 142, 182, 0.5),
              ]),
        ),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 145),
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image(
                    image: AssetImage('assets/images/callingDoctor.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 29,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dr.Upul',
                    style: TextStyle(
                        fontSize: 33,
                        fontFamily: 'Main lite',
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ],
              ),
              SizedBox(
                height: 29,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ringing',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Main',
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 225,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(PageTransition(
                            duration: Duration(milliseconds: 1000),
                            child: Video_Calling(),
                            type: PageTransitionType.bottomToTop));
                      },
                      icon: Icon(Icons.videocam_outlined),
                      iconSize: 32,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromRGBO(243, 0, 0, 1),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(PageTransition(
                            duration: Duration(milliseconds: 1000),
                            child: Message_2(),
                            type: PageTransitionType.bottomToTop));
                      },
                      icon: Icon(Icons.call_outlined),
                      color: Colors.white,
                      iconSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage('assets/images/Frame.png'),
                          height: 28,
                          width: 28,
                          color: Colors.black,
                        )
                        // Icon(Icons.mic_outlined),
                        // iconSize: 30,
                        ),
                  ),

                  // Image.asset(
                  //       'assets/images/call.png',
                ],
              )
            ],
          ),
        ),

        //Main Container
      ),
    );
  }
}

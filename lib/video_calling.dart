import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/Message2.dart';
import 'package:page_transition/page_transition.dart';

class Video_Calling extends StatefulWidget {
  const Video_Calling({super.key});

  @override
  State<Video_Calling> createState() => _Video_CallingState();
}

class _Video_CallingState extends State<Video_Calling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/doctor3.png'),
                    fit: BoxFit.cover)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 510, left: 39),
          child: Row(
            children: [
              Text(
                'Dr.Upul',
                style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'Main',
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 565, left: 53),
          child: Row(
            children: [
              Container(
                width: 13,
                height: 13,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF44B513),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '10.00',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Main',
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 480, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(
                image: AssetImage('assets/images/VCG.png'),
                height: 174,
                width: 124,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 680),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              SizedBox(
                width: 20,
              ),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(15, 104, 135, 1)),
                child: IconButton(
                  onPressed: () {},
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

              // Image.asset(
              //       'assets/images/call.png',
            ],
          ),
        )
      ]),
    ));
  }
}

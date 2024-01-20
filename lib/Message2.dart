import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/Calling.dart';
import 'package:medical_appoinment_booking_app/Message1.dart';
import 'package:medical_appoinment_booking_app/home.dart';
import 'package:medical_appoinment_booking_app/profile.dart';
import 'package:medical_appoinment_booking_app/select_date_&_time.dart';
import 'package:medical_appoinment_booking_app/video_calling.dart';
import 'package:page_transition/page_transition.dart';

class Message_2 extends StatefulWidget {
  const Message_2({super.key});

  @override
  State<Message_2> createState() => _Message_2State();
}

class _Message_2State extends State<Message_2> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 73, right: 20, left: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(PageTransition(
                                duration: Duration(milliseconds: 500),
                                child: Message_1(),
                                type: PageTransitionType.rightToLeft));
                          },
                          icon: Icon(Icons.arrow_back_ios_new_rounded)),
                      Text(
                        'Dr.Upul',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Main',
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(25, 142, 182, 1)),
                      ),
                      Text('                      ')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor:
                              const Color.fromRGBO(217, 217, 217, 0.3),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(PageTransition(
                                    duration: Duration(milliseconds: 1000),
                                    child: Calling(),
                                    type: PageTransitionType.bottomToTop));
                              },
                              icon: Image.asset('assets/images/call.png')),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 16,
                          backgroundColor:
                              const Color.fromRGBO(217, 217, 217, 0.3),
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(PageTransition(
                                    duration: Duration(milliseconds: 1000),
                                    child: Video_Calling(),
                                    type: PageTransitionType.bottomToTop));
                              },
                              icon:
                                  Image.asset('assets/images/videocall1.png')),
                        )
                      ],
                    ),
                  )
                ],
                //TOp Row woth call,videocall,name,back arrow
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                  height: MediaQuery.of(context).size.height - 250,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 46,
                            width: MediaQuery.of(context).size.width - 120,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11.5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rorem ipsum dolor sit  adipiscing elit.',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Main',
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 46,
                            width: MediaQuery.of(context).size.width - 120,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(25, 142, 182, 1),
                              borderRadius: BorderRadius.circular(11.5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rorem ipsum dolor sit  adipiscing elit.',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Main',
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 46,
                            width: MediaQuery.of(context).size.width - 120,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11.5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rorem ipsum dolor sit  adipiscing elit.',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Main',
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 46,
                            width: MediaQuery.of(context).size.width - 120,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(25, 142, 182, 1),
                              borderRadius: BorderRadius.circular(11.5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rorem ipsum dolor sit  adipiscing elit.',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Main',
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 46,
                            width: MediaQuery.of(context).size.width - 200,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(25, 142, 182, 1),
                              borderRadius: BorderRadius.circular(11.5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rorem adipiscing elit.',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Main',
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 46,
                            width: MediaQuery.of(context).size.width - 120,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11.5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rorem ipsum dolor sit  adipiscing elit.',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Main',
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 46,
                            width: MediaQuery.of(context).size.width - 120,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(25, 142, 182, 1),
                              borderRadius: BorderRadius.circular(11.5),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Rorem ipsum dolor sit  adipiscing elit.',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Main',
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Stack(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 46,
                              width: MediaQuery.of(context).size.width - 120,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(217, 217, 217, 0.3),
                                borderRadius: BorderRadius.circular(11.5),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Rorem ipsum dolor sit  adipiscing elit.',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Main',
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  const Color.fromRGBO(25, 142, 182, 1),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Image(
                                    image:
                                        AssetImage('assets/images/Frame.png'),
                                    height: 28,
                                    width: 28,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        )
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 54,
                                width: MediaQuery.of(context).size.width - 110,
                                child: TextField(
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                      hintText: ' Write here',
                                      prefixIcon: Icon(
                                        Icons.emoji_emotions_outlined,
                                        size: 28,
                                      ),
                                      hintStyle: TextStyle(
                                        color: const Color.fromRGBO(
                                            133, 133, 133, 1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        fontFamily: 'Main',
                                      ),
                                      filled: true,
                                      fillColor: const Color.fromRGBO(
                                          217, 217, 217, 0.3),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                        borderSide: BorderSide(
                                            color: const Color.fromRGBO(
                                                217, 217, 217, 0.3),
                                            width: 0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                                255, 241, 233, 233),
                                            width: 2),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4, right: 74),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt_outlined),
                                  color: const Color.fromRGBO(133, 133, 133, 1),

                                  // Image(
                                  //   image: AssetImage('assets/images/Frame.png'),
                                  //   height: 24,
                                  //   width: 24,
                                  // ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor:
                                  const Color.fromRGBO(25, 142, 182, 1),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Image(
                                    image: AssetImage('assets/images/Go.png'),
                                    height: 28,
                                    width: 28,
                                    color: Colors.white,
                                  )),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )))
              //Main Colume
            ]),
          ),
        ),
        //Main Container
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedFontSize: 12,
        iconSize: 26,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (int newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageTransition(
                      duration: Duration(milliseconds: 500),
                      child: HomePage(),
                      type: PageTransitionType.bottomToTop));
                },
                icon: Icon(
                  Icons.home_outlined,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageTransition(
                      duration: Duration(milliseconds: 500),
                      child: Select_Date_n_Time(),
                      type: PageTransitionType.bottomToTop));
                },
                icon: Icon(
                  Icons.access_time_outlined,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sms_outlined,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageTransition(
                      duration: Duration(milliseconds: 500),
                      child: Profile(),
                      type: PageTransitionType.bottomToTop));
                },
                icon: Icon(
                  Icons.account_circle_outlined,
                ),
              ),
              label: ''),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/Message2.dart';
import 'package:medical_appoinment_booking_app/home.dart';
import 'package:medical_appoinment_booking_app/profile.dart';
import 'package:medical_appoinment_booking_app/select_date_&_time.dart';
import 'package:page_transition/page_transition.dart';

class Message_1 extends StatefulWidget {
  const Message_1({super.key});

  @override
  State<Message_1> createState() => _Message_1State();
}

class _Message_1State extends State<Message_1> {
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
          padding: const EdgeInsets.only(top: 72, right: 20, left: 22),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(PageTransition(
                            duration: Duration(milliseconds: 500),
                            child: HomePage(),
                            type: PageTransitionType.rightToLeft));
                      },
                      icon: Icon(Icons.arrow_back_ios_new_rounded)),
                  Text(
                    'Message',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Main',
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(25, 142, 182, 1)),
                  ),
                  Text("               "),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 54,
                        width: MediaQuery.of(context).size.width - 46,
                        child: TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              hintText: ' Search a Doctar',
                              prefixIcon: Icon(
                                Icons.search,
                                size: 33,
                              ),
                              hintStyle: TextStyle(
                                color: const Color.fromRGBO(133, 133, 133, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                fontFamily: 'Main lite',
                              ),
                              filled: true,
                              fillColor:
                                  const Color.fromRGBO(217, 217, 217, 0.3),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide: BorderSide(
                                    color: const Color.fromRGBO(
                                        217, 217, 217, 0.3),
                                    width: 0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 241, 233, 233),
                                    width: 2),
                              ),
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6, right: 34),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image(
                            image: AssetImage('assets/images/Frame.png'),
                            height: 24,
                            width: 24,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height - 250,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Active Now',
                          style: TextStyle(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            fontFamily: 'Main',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(PageTransition(
                                  duration: Duration(milliseconds: 500),
                                  child: Message_2(),
                                  type: PageTransitionType.bottomToTop));
                            },
                            //we can use diffrent property
                            //like onTap,onhour etc

                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Active1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 3, top: 2),
                                  child: Container(
                                    width: 13,
                                    height: 13,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xFF44B513),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          InkWell(
                            //we can use diffrent property
                            //like onTap,onhour etc

                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Active2.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 3, top: 2),
                                  child: Container(
                                    width: 13,
                                    height: 13,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xFF44B513),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          InkWell(
                            //we can use diffrent property
                            //like onTap,onhour etc
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Active3.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 3, top: 2),
                                  child: Container(
                                    width: 13,
                                    height: 13,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xFF44B513),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          InkWell(
                            //we can use diffrent property
                            //like onTap,onhour etc

                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Active4.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 3, top: 2),
                                  child: Container(
                                    width: 13,
                                    height: 13,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xFF44B513),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          InkWell(
                            //we can use diffrent property
                            //like onTap,onhour etc

                            onTap: () {},
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Active5.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 3, top: 2),
                                  child: Container(
                                    width: 13,
                                    height: 13,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xFF44B513),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          InkWell(
                            //we can use diffrent property
                            //like onTap,onhour etc

                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Active5.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 3, top: 2),
                                  child: Container(
                                    width: 13,
                                    height: 13,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xFF44B513),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Text(
                          'Messages',
                          style: TextStyle(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            fontFamily: 'Main',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 85,
                          width: MediaQuery.of(context).size.width - 42,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/Active1.png'),
                                  height: 68,
                                  width: 68,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Dr.Upul',
                                                style: TextStyle(
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 22,
                                                  fontFamily: 'Main',
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Worem consectetur adipiscing elit.',
                                                style: TextStyle(
                                                  color: const Color.fromRGBO(
                                                      25, 142, 182, 1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  fontFamily: 'Main lite',
                                                ),
                                              ),
                                              // Container(
                                              //   height: 18,
                                              //   width: 18,
                                              //   decoration: BoxDecoration(
                                              //       shape: BoxShape.circle,
                                              //       color: const Color.fromRGBO(
                                              //           25, 142, 182, 1)),
                                              //   child: Align(
                                              //     alignment: Alignment.center,
                                              //     child: Text(
                                              //       '2',
                                              //       style:
                                              //           TextStyle(color: Colors.white),
                                              //     ),
                                              //   ),
                                              // ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '12:50',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      fontFamily: 'Main',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 26.5,
                                  ),
                                  Container(
                                    height: 18,
                                    width: 18,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: const Color.fromRGBO(
                                            25, 142, 182, 1)),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '2',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 85,
                          width: MediaQuery.of(context).size.width - 42,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/Active4.png'),
                                  height: 68,
                                  width: 68,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Dr.Silva',
                                                style: TextStyle(
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 22,
                                                  fontFamily: 'Main',
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Worem consectetur adipiscing elit.',
                                                style: TextStyle(
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  fontFamily: 'Main lite',
                                                ),
                                              ),
                                              // Container(
                                              //   height: 18,
                                              //   width: 18,
                                              //   decoration: BoxDecoration(
                                              //       shape: BoxShape.circle,
                                              //       color: const Color.fromRGBO(
                                              //           25, 142, 182, 1)),
                                              //   child: Align(
                                              //     alignment: Alignment.center,
                                              //     child: Text(
                                              //       '2',
                                              //       style:
                                              //           TextStyle(color: Colors.white),
                                              //     ),
                                              //   ),
                                              // ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '12:50',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      fontFamily: 'Main',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 85,
                          width: MediaQuery.of(context).size.width - 42,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/Active5.png'),
                                  height: 68,
                                  width: 68,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Dr.Pawani',
                                                style: TextStyle(
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 22,
                                                  fontFamily: 'Main',
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Worem consectetur adipiscing elit.',
                                                style: TextStyle(
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  fontFamily: 'Main lite',
                                                ),
                                              ),
                                              // Container(
                                              //   height: 18,
                                              //   width: 18,
                                              //   decoration: BoxDecoration(
                                              //       shape: BoxShape.circle,
                                              //       color: const Color.fromRGBO(
                                              //           25, 142, 182, 1)),
                                              //   child: Align(
                                              //     alignment: Alignment.center,
                                              //     child: Text(
                                              //       '2',
                                              //       style:
                                              //           TextStyle(color: Colors.white),
                                              //     ),
                                              //   ),
                                              // ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '12:50',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      fontFamily: 'Main',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 85,
                          width: MediaQuery.of(context).size.width - 42,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Image(
                                  image:
                                      AssetImage('assets/images/Active2.png'),
                                  height: 68,
                                  width: 68,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, top: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Dr.Rayan',
                                                style: TextStyle(
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 22,
                                                  fontFamily: 'Main',
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Worem consectetur adipiscing elit.',
                                                style: TextStyle(
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  fontFamily: 'Main lite',
                                                ),
                                              ),
                                              // Container(
                                              //   height: 18,
                                              //   width: 18,
                                              //   decoration: BoxDecoration(
                                              //       shape: BoxShape.circle,
                                              //       color: const Color.fromRGBO(
                                              //           25, 142, 182, 1)),
                                              //   child: Align(
                                              //     alignment: Alignment.center,
                                              //     child: Text(
                                              //       '2',
                                              //       style:
                                              //           TextStyle(color: Colors.white),
                                              //     ),
                                              //   ),
                                              // ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '12:50',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      fontFamily: 'Main',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 70,
                    ),
                  ],
                )),
              ),

              //main colume
            ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedFontSize: 12,
        iconSize: 26,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _navigateBottomBar,
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

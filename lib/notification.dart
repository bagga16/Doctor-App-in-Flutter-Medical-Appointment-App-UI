import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/home.dart';
import 'package:page_transition/page_transition.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 72, right: 20, left: 22),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                      'Notification',
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Main',
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(25, 142, 182, 1)),
                    ),
                    Text("         "),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Main',
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Mark All',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Main',
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),

                Container(
                  height: MediaQuery.of(context).size.height - 300,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 75,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(217, 217, 217, 0.3),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image(
                                        image: AssetImage(
                                            'assets/images/Notifications.png'),
                                        height: 27,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 11),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'April 2023',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Corem ipsum dolor sit amet,adipiscing elit.',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.5,
                                                      fontFamily: 'Main lite',
                                                    ),
                                                  ),
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
                              padding:
                                  const EdgeInsets.only(top: 14, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '15 Min',
                                        style: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          fontFamily: 'Main',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 26.5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 75,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(217, 217, 217, 0.3),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image(
                                        image: AssetImage(
                                            'assets/images/Notifications.png'),
                                        height: 27,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 11),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'April 2023',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Corem ipsum dolor sit amet,adipiscing elit.',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.5,
                                                      fontFamily: 'Main lite',
                                                    ),
                                                  ),
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
                              padding:
                                  const EdgeInsets.only(top: 14, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '15 Min',
                                        style: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          fontFamily: 'Main',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 26.5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 75,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(217, 217, 217, 0.3),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image(
                                        image: AssetImage(
                                            'assets/images/Notifications.png'),
                                        height: 27,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 11),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'April 2023',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Corem ipsum dolor sit amet,adipiscing elit.',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.5,
                                                      fontFamily: 'Main lite',
                                                    ),
                                                  ),
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
                              padding:
                                  const EdgeInsets.only(top: 14, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '15 Min',
                                        style: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          fontFamily: 'Main',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 26.5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 75,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(217, 217, 217, 0.3),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image(
                                        image: AssetImage(
                                            'assets/images/Notifications.png'),
                                        height: 27,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 11),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'April 2023',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Corem ipsum dolor sit amet,adipiscing elit.',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.5,
                                                      fontFamily: 'Main lite',
                                                    ),
                                                  ),
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
                              padding:
                                  const EdgeInsets.only(top: 14, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '15 Min',
                                        style: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          fontFamily: 'Main',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 26.5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 75,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(217, 217, 217, 0.3),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image(
                                        image: AssetImage(
                                            'assets/images/Notifications.png'),
                                        height: 27,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 11),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'April 2023',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Corem ipsum dolor sit amet,adipiscing elit.',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.5,
                                                      fontFamily: 'Main lite',
                                                    ),
                                                  ),
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
                              padding:
                                  const EdgeInsets.only(top: 14, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '15 Min',
                                        style: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          fontFamily: 'Main',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 26.5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 75,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(217, 217, 217, 0.3),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image(
                                        image: AssetImage(
                                            'assets/images/Notifications.png'),
                                        height: 27,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 11),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'April 2023',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Corem ipsum dolor sit amet,adipiscing elit.',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.5,
                                                      fontFamily: 'Main lite',
                                                    ),
                                                  ),
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
                              padding:
                                  const EdgeInsets.only(top: 14, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '15 Min',
                                        style: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          fontFamily: 'Main',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 26.5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 75,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(217, 217, 217, 0.3),
                                  borderRadius: BorderRadius.circular(11)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image(
                                        image: AssetImage(
                                            'assets/images/Notifications.png'),
                                        height: 27,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 11),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'April 2023',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Corem ipsum dolor sit amet,adipiscing elit.',
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 11.5,
                                                      fontFamily: 'Main lite',
                                                    ),
                                                  ),
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
                              padding:
                                  const EdgeInsets.only(top: 14, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '15 Min',
                                        style: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          fontFamily: 'Main',
                                        ),
                                      ),
                                      SizedBox(
                                        height: 26.5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      letterSpacing: 2,
                      fontFamily: 'Main',
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                )

                //Main Colume
              ],
            ),
          ),
        ),
        //Main Container
      ),
    );
  }
}

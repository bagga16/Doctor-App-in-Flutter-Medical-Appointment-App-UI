import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/home.dart';
import 'package:page_transition/page_transition.dart';

import 'aapoinment_details.dart';

class All_Doctors extends StatefulWidget {
  const All_Doctors({super.key});

  @override
  State<All_Doctors> createState() => _All_Doctors();
}

class _All_Doctors extends State<All_Doctors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Padding(
            padding: const EdgeInsets.only(top: 68),
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
                      'All Doctors',
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Main',
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(25, 142, 182, 1)),
                    ),
                    Text("      "),
                  ],
                ),
                SizedBox(
                  height: 31,
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
                  height: 30,
                ),

                Container(
                  height: MediaQuery.of(context).size.height - 250,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 161,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: const Color.fromRGBO(217, 217, 217, 0.3),
                              ),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/doctor.png'),
                                    width: MediaQuery.of(context).size.width /
                                        2.69,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Dr.Pawan',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Main',
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 24, right: 6),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Image(
                                                  image: AssetImage(
                                                      'assets/images/heart.png'),
                                                  height: 20,
                                                )),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Jorem ipsum dolor, consectetur\nadipiscing elit. Nunc v libero et\nvelit interdum, ac  mattis.',
                                            style: TextStyle(
                                                fontSize: 11.5,
                                                fontFamily: 'Main lite',
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Container(
                                              height: 30,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: const Color.fromRGBO(
                                                    25, 142, 182, 1),
                                              ),
                                              child: TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).push(
                                                        PageTransition(
                                                            duration: Duration(
                                                                seconds: 1),
                                                            child:
                                                                Appoinment_Details(),
                                                            type: PageTransitionType
                                                                .bottomToTop));
                                                  },
                                                  child: Text(
                                                    'Book',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Main lite',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color
                                                                .fromRGBO(
                                                            255, 255, 255, 1)),
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: const Color.fromRGBO(
                                                248, 150, 3, 1),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Text(
                                              '5.0',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Main lite',
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1)),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 161,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: const Color.fromRGBO(217, 217, 217, 0.3),
                              ),
                              child: Row(children: [
                                Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/Ladydoctor1.png'),
                                        height: 150,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2.69)),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Dr.Wanitha',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Main',
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 24, right: 6),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Image(
                                                  image: AssetImage(
                                                      'assets/images/heart.png'),
                                                  height: 20,
                                                )),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Jorem ipsum dolor, consectetur\nadipiscing elit. Nunc v libero et\nvelit interdum, ac  mattis.',
                                            style: TextStyle(
                                                fontSize: 11.5,
                                                fontFamily: 'Main lite',
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Container(
                                              height: 30,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: const Color.fromRGBO(
                                                    25, 142, 182, 1),
                                              ),
                                              child: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Book',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Main lite',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color
                                                                .fromRGBO(
                                                            255, 255, 255, 1)),
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: const Color.fromRGBO(
                                                248, 150, 3, 1),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Text(
                                              '5.0',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Main lite',
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1)),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 161,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: const Color.fromRGBO(217, 217, 217, 0.3),
                              ),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/doctor2.png'),
                                    width: MediaQuery.of(context).size.width /
                                        2.69,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Dr.Udara',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Main',
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 24, right: 6),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Image(
                                                  image: AssetImage(
                                                      'assets/images/heart.png'),
                                                  height: 20,
                                                )),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Jorem ipsum dolor, consectetur\nadipiscing elit. Nunc v libero et\nvelit interdum, ac  mattis.',
                                            style: TextStyle(
                                                fontSize: 11.5,
                                                fontFamily: 'Main lite',
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Container(
                                              height: 30,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: const Color.fromRGBO(
                                                    25, 142, 182, 1),
                                              ),
                                              child: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Book',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Main lite',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color
                                                                .fromRGBO(
                                                            255, 255, 255, 1)),
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: const Color.fromRGBO(
                                                248, 150, 3, 1),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Text(
                                              '5.0',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Main lite',
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1)),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 161,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: const Color.fromRGBO(217, 217, 217, 0.3),
                              ),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/doctor.png'),
                                    width: MediaQuery.of(context).size.width /
                                        2.69,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Dr.Pawan',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Main',
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 24, right: 6),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Image(
                                                  image: AssetImage(
                                                      'assets/images/heart.png'),
                                                  height: 20,
                                                )),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Jorem ipsum dolor, consectetur\nadipiscing elit. Nunc v libero et\nvelit interdum, ac  mattis.',
                                            style: TextStyle(
                                                fontSize: 11.5,
                                                fontFamily: 'Main lite',
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Container(
                                              height: 30,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: const Color.fromRGBO(
                                                    25, 142, 182, 1),
                                              ),
                                              child: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Book',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Main lite',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color
                                                                .fromRGBO(
                                                            255, 255, 255, 1)),
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: const Color.fromRGBO(
                                                248, 150, 3, 1),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Text(
                                              '5.0',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Main lite',
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1)),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 161,
                              width: MediaQuery.of(context).size.width - 42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: const Color.fromRGBO(217, 217, 217, 0.3),
                              ),
                              child: Row(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/doctor.png'),
                                    width: MediaQuery.of(context).size.width /
                                        2.69,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Dr.Pawan',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: 'Main',
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 24, right: 6),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Image(
                                                  image: AssetImage(
                                                      'assets/images/heart.png'),
                                                  height: 20,
                                                )),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Jorem ipsum dolor, consectetur\nadipiscing elit. Nunc v libero et\nvelit interdum, ac  mattis.',
                                            style: TextStyle(
                                                fontSize: 11.5,
                                                fontFamily: 'Main lite',
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    0, 0, 0, 1)),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Container(
                                              height: 30,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: const Color.fromRGBO(
                                                    25, 142, 182, 1),
                                              ),
                                              child: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Book',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Main lite',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: const Color
                                                                .fromRGBO(
                                                            255, 255, 255, 1)),
                                                  )),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: const Color.fromRGBO(
                                                248, 150, 3, 1),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 8),
                                            child: Text(
                                              '5.0',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Main lite',
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      0, 0, 0, 1)),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),

                //Main Colume
              ],
            ),
          ),

          //Main Container
        ),
      ),
    );
  }
}

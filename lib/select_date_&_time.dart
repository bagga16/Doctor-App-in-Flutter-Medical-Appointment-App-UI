import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/Message1.dart';
import 'package:medical_appoinment_booking_app/aapoinment_details.dart';
import 'package:medical_appoinment_booking_app/home.dart';
import 'package:medical_appoinment_booking_app/payment.dart';
import 'package:medical_appoinment_booking_app/profile.dart';
import 'package:page_transition/page_transition.dart';

class Select_Date_n_Time extends StatefulWidget {
  const Select_Date_n_Time({super.key});

  @override
  State<Select_Date_n_Time> createState() => _Select_Date_n_TimeState();
}

class _Select_Date_n_TimeState extends State<Select_Date_n_Time> {
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
          padding: const EdgeInsets.only(top: 68, left: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(PageTransition(
                                duration: Duration(milliseconds: 500),
                                child: Appoinment_Details(),
                                type: PageTransitionType.rightToLeft));
                          },
                          icon: Icon(Icons.arrow_back_ios_new_rounded)),
                    ),
                    Text(
                      'Select date and time ',
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Main lite',
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(25, 142, 182, 1)),
                    ),
                    Text("          "),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/Calender.png'),
                      height: 340,
                      width: MediaQuery.of(context).size.width - 50,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(25, 142, 182, 1),
                            borderRadius: BorderRadius.circular(13)),
                        height: 55,
                        width: MediaQuery.of(context).size.width - 48,
                        child: TextButton(
                            onPressed: () async {
                              DateTime? datePicked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2023),
                                  lastDate: DateTime(2025));
                              if (datePicked != null) {
                                print(
                                    'Your appoinment date is: ${datePicked.day}-${datePicked.month}-${datePicked.year}');
                              }
                            },
                            child: Text(
                              'Select Date',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'Main',
                                  fontWeight: FontWeight.w700,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1)),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Available Time Slot',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Main',
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'See All',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Main',
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width / 2.8,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '10.00 AM',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Main',
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              )),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width / 2.8,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(25, 142, 182, 1),
                              borderRadius: BorderRadius.circular(11)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '12.00 AM',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Main',
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              )),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width / 2.8,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '08.00 PM',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Main lite',
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 56,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(25, 142, 182, 1),
                            borderRadius: BorderRadius.circular(11)),
                        height: 55,
                        width: MediaQuery.of(context).size.width - 46,
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(PageTransition(
                                  duration: Duration(milliseconds: 500),
                                  child: Payment(),
                                  type: PageTransitionType.bottomToTop));
                            },
                            child: Text(
                              'Set Appointment',
                              style: TextStyle(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                fontFamily: 'Main lite',
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
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
              icon: Icon(
                Icons.access_time_outlined,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageTransition(
                      duration: Duration(milliseconds: 500),
                      child: Message_1(),
                      type: PageTransitionType.bottomToTop));
                },
                icon: Icon(
                  Icons.sms_outlined,
                ),
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

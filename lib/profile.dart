import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/Message1.dart';
import 'package:medical_appoinment_booking_app/home.dart';
import 'package:medical_appoinment_booking_app/select_date_&_time.dart';
import 'package:page_transition/page_transition.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                      'Profile',
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Main',
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(25, 142, 182, 1)),
                    ),
                    Text("               "),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/HomepageBoy.png'),
                      width: MediaQuery.of(context).size.width / 2.9,
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Chathura Sampath',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Main',
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    )
                  ],
                ),
                SizedBox(
                  height: 32,
                ),

                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 8.7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.history),
                            alignment: Alignment.center,
                            iconSize: 25,
                            color: const Color.fromRGBO(25, 142, 182, 1),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'History',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Main',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                            iconSize: 21,
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 8.7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.account_circle_outlined),
                            alignment: Alignment.center,
                            iconSize: 25,
                            color: const Color.fromRGBO(25, 142, 182, 1),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Personal Detailes',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Main',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                            iconSize: 21,
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 8.7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.location_on),
                            alignment: Alignment.center,
                            iconSize: 25,
                            color: const Color.fromRGBO(25, 142, 182, 1),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Location',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Main',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                            iconSize: 21,
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 8.7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image(
                              image: AssetImage('assets/images/Payment.png'),
                              height: 19,
                            ),
                            alignment: Alignment.center,
                            iconSize: 25,
                            color: const Color.fromRGBO(25, 142, 182, 1),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Payment Method',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Main',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                            iconSize: 21,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 8.7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.settings_outlined),
                            alignment: Alignment.center,
                            iconSize: 25,
                            color: const Color.fromRGBO(25, 142, 182, 1),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Settings',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Main',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                            iconSize: 21,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 8.7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.help_outline),
                            alignment: Alignment.center,
                            iconSize: 25,
                            color: const Color.fromRGBO(25, 142, 182, 1),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Help',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Main',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios),
                            iconSize: 21,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 8.7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color.fromRGBO(217, 217, 217, 1),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.logout_outlined),
                            alignment: Alignment.center,
                            iconSize: 25,
                            color: const Color.fromRGBO(25, 142, 182, 1),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Main',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            )),
                      ],
                    ),
                  ],
                ),

                //Main colume
              ],
            ),
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
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              label: ''),
        ],
      ),
    );
  }
}

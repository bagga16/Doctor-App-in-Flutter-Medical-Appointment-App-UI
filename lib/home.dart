import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:medical_appoinment_booking_app/Message1.dart';
import 'package:medical_appoinment_booking_app/all_doctors.dart';
import 'package:medical_appoinment_booking_app/notification.dart';
import 'package:medical_appoinment_booking_app/profile.dart';
import 'package:medical_appoinment_booking_app/select_date_&_time.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/Ladydoctor.png'},
    {"id": 2, "image_path": 'assets/images/doctor.png'},
    {"id": 3, "image_path": 'assets/images/Ladydoctor1.png'},
    {"id": 4, "image_path": 'assets/images/doctor2.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26, right: 26),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/images/HomepageBoy.png'),
                            height: 68,
                            width:
                                68, //MediaQuery.of(context).size.width - 275,
                          ),
                          Text('      '),
                          Text(
                            'Chathura,',
                            style: TextStyle(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                              fontFamily: 'Main',
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(PageTransition(
                                    duration: Duration(milliseconds: 500),
                                    child: Notifications(),
                                    type: PageTransitionType.bottomToTop));
                              },
                              icon: Image(
                                image: AssetImage(
                                    'assets/images/Notification.png'),
                                height: 27,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
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
                          height: 58,
                          width: MediaQuery.of(context).size.width - 46,
                          child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                hintText: ' Search a Doctar',
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 33,
                                ),

                                // Image(
                                //   image: AssetImage('assets/images/Search.png'),
                                //   height: 15,
                                //   width: 15,
                                // ),
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
                                      color: const Color.fromRGBO(
                                          218, 218, 218, 1),
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
                        Stack(
                          children: [
                            Container(
                              height: 194,
                              width: MediaQuery.of(context).size.width - 38,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 174,
                                  width: MediaQuery.of(context).size.width - 38,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color:
                                        const Color.fromRGBO(25, 142, 182, 1),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 24,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35, top: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Medical Center',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 26,
                                      fontFamily: 'Main',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Yorem ipsum dolor sit amet,\n consectetur adipiscing elit.\n Nunc vulputate libero et velit\n interdum, ac aliquet odio\n mattis.',
                                    style: TextStyle(
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.5,
                                      fontFamily: 'Main lite',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //crousal Slider
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 18, left: 165),
                              child: Container(
                                height: 156,
                                //  width: MediaQuery.of(context).size.width - ,
                                child: InkWell(
                                  onTap: () {
                                    print(currentIndex);
                                  },
                                  child: CarouselSlider(
                                    items: imageList
                                        .map(
                                          (item) => Image.asset(
                                            item['image_path'],
                                            fit: BoxFit.cover,
                                            // width: double.infinity,
                                          ),
                                        )
                                        .toList(),
                                    carouselController: carouselController,
                                    options: CarouselOptions(
                                      scrollPhysics:
                                          const BouncingScrollPhysics(),
                                      autoPlay: true,
                                      aspectRatio: 2,
                                      viewportFraction: 1,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          currentIndex = index;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //crousal dots
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                    imageList.asMap().entries.map((entry) {
                                  return GestureDetector(
                                    onTap: () => carouselController
                                        .animateToPage(entry.key),
                                    child: Container(
                                      width:
                                          currentIndex == entry.key ? 15 : 12,
                                      height:
                                          currentIndex == entry.key ? 15 : 12,
                                      margin: const EdgeInsets.symmetric(
                                        horizontal: 3.0,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: currentIndex == entry.key
                                              ? const Color.fromRGBO(
                                                  25, 142, 182, 1)
                                              : const Color.fromRGBO(
                                                  196, 196, 196, 0.7)),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, right: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Categories',
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
                                        fontFamily: 'Main lite',
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 1)),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width:
                                      MediaQuery.of(context).size.width / 2.8,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(25, 142, 182, 1),
                                      borderRadius: BorderRadius.circular(11)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'denteeth',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Main lite',
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1)),
                                      )),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  height: 70,
                                  width:
                                      MediaQuery.of(context).size.width / 2.8,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(25, 142, 182, 1),
                                      borderRadius: BorderRadius.circular(11)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Theripist',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Main lite',
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1)),
                                      )),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  height: 70,
                                  width:
                                      MediaQuery.of(context).size.width / 2.8,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(25, 142, 182, 1),
                                      borderRadius: BorderRadius.circular(11)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'denteeth',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Main lite',
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1)),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, right: 23),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'All Doctors',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontFamily: 'Main',
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(PageTransition(
                                        duration: Duration(seconds: 1),
                                        child: All_Doctors(),
                                        type: PageTransitionType.bottomToTop));
                                  },
                                  child: Text(
                                    'See All',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Main lite',
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 1)),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
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
                                          'assets/images/doctor.png')),
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
                          height: 70,
                        ),
                      ],
                    ),
                  ),
                ),
                //Main Colume
              ],
            ),
          ),
        ),
        //Main Container
      ),
      // bottomNavigationBar: GNav(
      //     onTabChange: (value) {
      //       setState(() {
      //         value = currentIndex;
      //       });
      //       currentIndex = _selectedIndex;
      //     },
      //     padding: EdgeInsets.fromLTRB(23, 15, 23, 15),
      //     tabs: const [
      //       GButton(icon: Icons.home_outlined),
      //       GButton(icon: Icons.access_time_outlined),
      //       GButton(icon: Icons.sms_outlined),
      //       GButton(icon: Icons.account_circle_outlined),
      //     ]),

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
              icon: Icon(
                Icons.home_outlined,
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

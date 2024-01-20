import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/all_doctors.dart';
import 'package:medical_appoinment_booking_app/select_date_&_time.dart';
import 'package:page_transition/page_transition.dart';

class Appoinment_Details extends StatefulWidget {
  const Appoinment_Details({super.key});

  @override
  State<Appoinment_Details> createState() => _Appoinment_DetailsState();
}

class _Appoinment_DetailsState extends State<Appoinment_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Padding(
          padding: const EdgeInsets.only(top: 65, left: 19),
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
                                child: All_Doctors(),
                                type: PageTransitionType.rightToLeft));
                          },
                          icon: Icon(Icons.arrow_back_ios_new_rounded)),
                    ),
                    Text(
                      'Appointment',
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'Main',
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(25, 142, 182, 1)),
                    ),
                    Text("          "),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),

                //First contaner to show details
                //
                //about doctor
                //is ma 1 bara container lia phr us ma 2 container
                //1 ma pic 2sray ma 1 colum or 4 rows liay details show kreny ky liay
                Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                            ),
                            child: Image(
                              image: AssetImage('assets/images/doctor3.png'),
                              height: 140,
                              width: 120,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            height: 140,
                            width: MediaQuery.of(context).size.width / 1.73,
                            child: Column(
                              children: [
                                //Row in colume
                                //to show three button + Name of doctor
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, top: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Dr.Upul   ',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'Main',
                                            fontWeight: FontWeight.w700,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1)),
                                      ),
                                      // SizedBox(
                                      //   width: MediaQuery.of(context)
                                      //           .size
                                      //           .width /
                                      //       30,
                                      // ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: const Color.fromRGBO(
                                            217, 217, 217, 0.3),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Image.asset(
                                            'assets/images/sms.png',
                                          ),
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: const Color.fromRGBO(
                                            217, 217, 217, 0.3),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                                'assets/images/call.png')),
                                      ),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: const Color.fromRGBO(
                                            217, 217, 217, 0.3),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                                'assets/images/videocall1.png')),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                //another row within same colume
                                //to show  some text
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'denteeth',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Main',
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                //another row within same colume
                                //to show  some text
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Torem ipsum dolor sit amet\nconsectetur adipiscing elit.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Main',
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, right: 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Payment',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Main',
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1)),
                                      ),
                                      Text(
                                        '\$ 120.00',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Main',
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 38,
                ),

                Row(
                  children: [
                    Text(
                      'Detailes',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Main',
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  'Worem ipsum dolor sit ametconsectetur adipiscing elit Nuncvulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.Curabitur tempus urna at turpis condimentum lobortisUt commodo efficitur neque. Ut diam quam, semper\niaculis condimentum ac, vestibulum eu nisl.',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Main',
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                ),

                SizedBox(
                  height: 22,
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Working Hours',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Main',
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              PageTransition(
                                  duration: Duration(milliseconds: 500),
                                  child: Select_Date_n_Time(),
                                  type: PageTransitionType.bottomToTop),
                            );
                          },
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
                  height: 18,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width / 2.5,
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
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(25, 142, 182, 1),
                              borderRadius: BorderRadius.circular(11)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '11.00 AM',
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
                          width: MediaQuery.of(context).size.width / 2.55,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '12.00 PM',
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
                  height: 18,
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' Date',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Main',
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              PageTransition(
                                  duration: Duration(milliseconds: 500),
                                  child: Select_Date_n_Time(),
                                  type: PageTransitionType.leftToRightWithFade),
                            );
                          },
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
                  height: 18,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 72,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(25, 142, 182, 1),
                              borderRadius: BorderRadius.circular(11)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Sun 4',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Main lite',
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              )),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 72,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Mon 5',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Main lite',
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(0, 0, 0, 1)),
                              )),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          height: 72,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(217, 217, 217, 0.3),
                              borderRadius: BorderRadius.circular(11)),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Tue 6',
                                style: TextStyle(
                                    fontSize: 28,
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
                        height: 57,
                        width: MediaQuery.of(context).size.width - 45,
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                PageTransition(
                                    duration: Duration(milliseconds: 500),
                                    child: Select_Date_n_Time(),
                                    type: PageTransitionType.bottomToTop),
                              );
                            },
                            child: Text(
                              'Book an Appointment',
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

                //Main colume
              ],
            ),
          ),
        ),

        //Main Container
      ),
    );
  }
}

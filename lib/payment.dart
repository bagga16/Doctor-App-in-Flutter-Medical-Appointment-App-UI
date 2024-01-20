import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/Payment_Successful.dart';

import 'package:medical_appoinment_booking_app/select_date_&_time.dart';
import 'package:page_transition/page_transition.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromRGBO(25, 142, 182, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 23, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(PageTransition(
                              duration: Duration(milliseconds: 500),
                              child: Select_Date_n_Time(),
                              type: PageTransitionType.rightToLeft));
                        },
                        icon: Icon(Icons.arrow_back_ios_new_rounded),
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    Text(
                      'Payment ',
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Main',
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                    Text("     "),
                  ],
                ),
              ),
              SizedBox(
                height: 65,
              ),
              Text(
                '\$ 120.00',
                style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'Main lite',
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height - 160,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                    ),
                    //container ky nader colume taky
                    //mazeed widgest use ker seku
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, top: 26),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Doctor Chanaling Payment Method',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontFamily: 'Main lite',
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 48.5,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(25, 142, 182, 1),
                                    borderRadius: BorderRadius.circular(17),
                                    border: Border.all(
                                        width: 2.3, style: BorderStyle.solid),
                                  ),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Card Payment',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Main',
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1)),
                                      )),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  height: 48.5,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          217, 217, 217, 0.3),
                                      borderRadius: BorderRadius.circular(17)),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Cash Payment',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Main',
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1)),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Card Number',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Main',
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width - 56,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            217, 217, 217, 0.3)),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          borderSide: BorderSide(
                                            color: const Color.fromRGBO(
                                                217, 217, 217, 0.5),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: const Color.fromRGBO(
                                                    217, 217, 217, 0.5),
                                                width: 0.3),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        fillColor: const Color.fromRGBO(
                                            217, 217, 217, 0.3),
                                        filled: true,
                                        hintText: ' 1234 8896 1145 0896',
                                        hintStyle: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          fontFamily: 'Main',
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          borderSide: BorderSide(
                                              color: const Color.fromRGBO(
                                                  217, 217, 217, 0.3)),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 28,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Expiry Date',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Main',
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                Text(
                                  'CVV',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Main',
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                Text('  '),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width / 2.25,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            217, 217, 217, 0.3)),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            color: const Color.fromRGBO(
                                                217, 217, 217, 0.5),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: const Color.fromRGBO(
                                                    217, 217, 217, 0.5),
                                                width: 0.3),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        fillColor: const Color.fromRGBO(
                                            217, 217, 217, 0.3),
                                        filled: true,
                                        hintText: '10/02/2022',
                                        hintStyle: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Main',
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: const Color.fromRGBO(
                                                  217, 217, 217, 0.3)),
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width / 2.9,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            217, 217, 217, 0.3)),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            color: const Color.fromRGBO(
                                                217, 217, 217, 0.5),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: const Color.fromRGBO(
                                                    217, 217, 217, 0.5),
                                                width: 0.3),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        fillColor: const Color.fromRGBO(
                                            217, 217, 217, 0.3),
                                        filled: true,
                                        hintText: '204',
                                        hintStyle: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Main',
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: const Color.fromRGBO(
                                                  217, 217, 217, 0.3)),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    fontFamily: 'Main',
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width - 56,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            217, 217, 217, 0.3)),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          borderSide: BorderSide(
                                            color: const Color.fromRGBO(
                                                217, 217, 217, 0.5),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: const Color.fromRGBO(
                                                    217, 217, 217, 0.5),
                                                width: 0.3),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        fillColor: const Color.fromRGBO(
                                            217, 217, 217, 0.3),
                                        filled: true,
                                        hintText: ' Ravishka Sathsara',
                                        hintStyle: TextStyle(
                                          color:
                                              const Color.fromRGBO(0, 0, 0, 1),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: 'Main',
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          borderSide: BorderSide(
                                              color: const Color.fromRGBO(
                                                  217, 217, 217, 0.3)),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(25, 142, 182, 1),
                                      borderRadius: BorderRadius.circular(16)),
                                  height: 60,
                                  width: MediaQuery.of(context).size.width - 56,
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            PageTransition(
                                                duration:
                                                    Duration(milliseconds: 500),
                                                child: Payment_Successful(),
                                                type: PageTransitionType
                                                    .bottomToTop));
                                      },
                                      child: Text(
                                        'Pay Now',
                                        style: TextStyle(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24,
                                          fontFamily: 'Main',
                                        ),
                                      )),
                                )
                              ],
                            ),

                            //second container colume
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        //Main Container
      ),
    );
  }
}

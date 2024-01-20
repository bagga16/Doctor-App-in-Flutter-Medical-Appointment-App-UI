import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/Calling.dart';
import 'package:medical_appoinment_booking_app/Message1.dart';
import 'package:medical_appoinment_booking_app/Message2.dart';
import 'package:medical_appoinment_booking_app/Payment_Successful.dart';
import 'package:medical_appoinment_booking_app/aapoinment_details.dart';
import 'package:medical_appoinment_booking_app/all_doctors.dart';
import 'package:medical_appoinment_booking_app/home.dart';
import 'package:medical_appoinment_booking_app/notification.dart';
import 'package:medical_appoinment_booking_app/onbording.dart';
import 'package:medical_appoinment_booking_app/payment.dart';
import 'package:medical_appoinment_booking_app/profile.dart';
import 'package:medical_appoinment_booking_app/select_date_&_time.dart';
import 'package:medical_appoinment_booking_app/signin.dart';
import 'package:medical_appoinment_booking_app/video_calling.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Onboarding',
    routes: {
      'Onboarding': (context) => Onboarding(),
      'SignIn': (context) => SignIn(),
      'HomePage': (context) => HomePage(),
      'All_Doctors': (context) => All_Doctors(),
      'Appoinment_Details': (context) => Appoinment_Details(),
      'Select_Date_n_Time': (context) => Select_Date_n_Time(),
      'Payment': (context) => Payment(),
      'Payment_Successful': (context) => Payment_Successful(),
      'Calling': (context) => Calling(),
      'Message_1': (context) => Message_1(),
      'Message_2': (context) => Message_2(),
      'Video_Calling': (context) => Video_Calling(),
      'Profile': (context) => Profile(),
      'Notifications': (context) => Notifications(),
    },
  ));
}

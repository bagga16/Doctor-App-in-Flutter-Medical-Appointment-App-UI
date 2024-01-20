import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/home.dart';
import 'package:page_transition/page_transition.dart';

class Payment_Successful extends StatefulWidget {
  const Payment_Successful({super.key});

  @override
  State<Payment_Successful> createState() => _Payment_SuccessfulState();
}

class _Payment_SuccessfulState extends State<Payment_Successful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 210),
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3, color: const Color.fromRGBO(0, 0, 0, 1)),
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(25, 142, 182, 1),
                  ),
                  // child: Icon(
                  //   Icons.done,
                  //   color: Colors.white,
                  //   size: 110,
                  // ),

                  child: Image(
                    image: AssetImage('assets/images/Done.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 42,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Congratulations',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Main lite',
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(25, 142, 182, 1)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Payment Is Successfuly',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Main',
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ],
              ),
              SizedBox(
                height: 185,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(25, 142, 182, 1),
                        borderRadius: BorderRadius.circular(14)),
                    height: 60,
                    width: MediaQuery.of(context).size.width - 50,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(PageTransition(
                              duration: Duration(milliseconds: 500),
                              child: HomePage(),
                              type: PageTransitionType.rightToLeft));
                        },
                        child: Text(
                          'Back',
                          style: TextStyle(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            letterSpacing: 1.5,
                            fontFamily: 'Main lite',
                          ),
                        )),
                  )
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

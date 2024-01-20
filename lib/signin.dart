import 'package:flutter/material.dart';
import 'package:medical_appoinment_booking_app/home.dart';
import 'package:medical_appoinment_booking_app/signup.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 73),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Main',
                          color: const Color.fromRGBO(25, 142, 182, 1)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 42,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Main',
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 27,
                    ),
                    child: Text(
                      'Korem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Main',
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 56,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Main',
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 46,
                    height: 54,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(217, 217, 217, 0.3),
                      border: Border.all(
                          color: const Color.fromRGBO(218, 218, 218, 1)),
                      borderRadius: BorderRadius.circular(11),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: const Color.fromRGBO(0, 0, 0, 0.06),
                      //     blurRadius: 15, // soften the shadow
                      //     spreadRadius: 10, //extend the shadow
                      //   )
                      // ],
                    ),
                    child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Email',
                          hintStyle: TextStyle(
                            color: const Color.fromRGBO(133, 133, 133, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            fontFamily: 'Main lite',
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(217, 217, 217, 0.3),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                                color: const Color.fromRGBO(218, 218, 218, 1),
                                width: 0.5),
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Main',
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 46,
                        height: 54,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(217, 217, 217, 0.3),
                          border: Border.all(
                              color: const Color.fromRGBO(218, 218, 218, 1)),
                          borderRadius: BorderRadius.circular(11),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: const Color.fromRGBO(0, 0, 0, 0.06),
                          //     blurRadius: 15, // soften the shadow
                          //     spreadRadius: 10, //extend the shadow
                          //   )
                          // ],
                        ),
                        child: TextField(
                          obscureText: true,
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Password:',
                            hintStyle: TextStyle(
                              color: const Color.fromRGBO(133, 133, 133, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              fontFamily: 'Main lite',
                            ),
                            filled: true,
                            fillColor: const Color.fromRGBO(217, 217, 217, 0.3),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: const Color.fromRGBO(218, 218, 218, 1),
                                  width: 0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, left: 280),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/eye-closed.png')),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            fontFamily: 'Main',
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 56,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(25, 142, 182, 1),
                        borderRadius: BorderRadius.circular(12)),
                    height: 59,
                    width: MediaQuery.of(context).size.width - 55,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            PageTransition(
                                duration: Duration(seconds: 1),
                                child: HomePage(),
                                type: PageTransitionType.bottomToTop),
                          );
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            fontFamily: 'Main',
                          ),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'OR',
                    style: TextStyle(
                      color: const Color.fromRGBO(133, 133, 133, 1),
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      fontFamily: 'Main',
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(25, 142, 182, 1)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage('assets/images/Facebook.png'),
                        )),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 2,
                          color: const Color.fromRGBO(25, 142, 182, 1)),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage('assets/images/google.png'),
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: TextStyle(
                        color: const Color.fromRGBO(25, 142, 182, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        fontFamily: 'Main'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          PageTransition(
                              duration: Duration(seconds: 1),
                              child: SignUp(),
                              type: PageTransitionType.bottomToTop),
                        );
                      },
                      child: Text(
                        ' Sign Up',
                        style: TextStyle(
                            color: const Color.fromRGBO(25, 142, 182, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            fontFamily: 'Montserrat bold'),
                      ))
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
          //Main coloum
        ),
      ),
    );
  }
}

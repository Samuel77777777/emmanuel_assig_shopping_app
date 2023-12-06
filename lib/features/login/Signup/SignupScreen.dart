import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Login/SocialSignIn.dart';
import '../colors.dart';
import 'SignupForm.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Image(
                image: AssetImage("./assets/Claps.png"),
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: mainHeading),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                    'It was popularised in the 1960s with the release of\n Letraset sheetscontaining Lorem Ipsum.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      color: textColor,
                    )),
              ),
              const SizedBox(
                height: 24,
              ),
              //the social logins

              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Color(0xFFF5F9FE)),
                        child: GestureDetector(
                          child: Row(
                            children: [
                              const Image(
                                  image: AssetImage("./assets/facebook.png")),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Facebook',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[800]),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    //GOOGLE CONTAINER

                    SocialSignIn(
                        imagePath: "./assets/google.png",
                        onTap: (){},
                        text: "Google")
                  ],
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //line

              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 1,
                      width: 150,
                      color: Color(0xFFE0E5EC),
                    ),
                    Text('Or',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Color(0xFFE0E5EC))),
                    Container(
                      height: 1,
                      width: 150,
                      color: Color(0xFFE0E5EC),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}

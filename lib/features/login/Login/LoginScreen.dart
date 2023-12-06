import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';
import 'LoginForm.dart';
import 'SocialSignIn.dart';


class LoginScreen extends StatefulWidget {
    const LoginScreen({super.key});
   const LoginScreen._();

  static Route<void> route() {
    return PageRouteBuilder(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) {
        return FadeTransition(
          opacity: animation,
          child: const LoginScreen._(),
        );
      },
    );
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Image(
                image: const AssetImage("./assets/Claps.png"),
                width: size.width * 0.2,
                height: size.width * 0.2,
              ),
              SizedBox(height: size.height * 0.04),
              Center(
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                    fontSize: size.width * 0.1,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    color: mainHeading,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Center(
                child: Text(
                  'It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: size.width * 0.04,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    color: textColor,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              // Social Logins

              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(size.width * 0.05),
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xFFF5F9FE),
                        ),
                        child: GestureDetector(
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage("./assets/facebook.png"),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Text(
                                'Facebook',
                                style: GoogleFonts.poppins(
                                  fontSize: size.width * 0.04,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[800],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    // Google Container

                    SocialSignIn(
                        imagePath: "./assets/google.png",
                        onTap: (){},
                        // onTap: () => AuthService().signInWithGoogle(),
                        text: "Google")
                  ],
                ),
              ),

              SizedBox(
                height: size.height * 0.01,
              ),

              // Line

              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 1,
                      width: size.width * 0.36,
                      color: Color(0xFFE0E5EC),
                    ),
                    Text(
                      'Or',
                      style: GoogleFonts.poppins(
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFFE0E5EC),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: size.width * 0.36,
                      color: Color(0xFFE0E5EC),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: size.height * 0.015,
              ),

              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
  

}

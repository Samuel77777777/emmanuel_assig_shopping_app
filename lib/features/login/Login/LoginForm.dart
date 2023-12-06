
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:wow_shopping/features/home/widgets/bottombar.dart';



import '../Signup/SignupScreen.dart';
import '../colors.dart';
import 'auth_button.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isChecked = false;
  bool obscureText = true;

    final _formkey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signInUser() async {

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),

      );


        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
               HomePages(), 
        ),
      );
    // show loading circle
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Form(
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              //name field
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                  vertical: size.height * 0.01,
                ),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      borderSide: BorderSide(color:Color(0xFFF5F9FE)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: size.height * 0.035,
                      horizontal: size.width * 0.03,
                    ),
                    filled: true,
                    fillColor:Color(0xFFF5F9FE),
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.grey[900],
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.001),
              //password field
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.04,
                  vertical: size.height * 0.01,
                ),
                child: TextField(
                  controller: passwordController,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      borderSide: BorderSide(color:Color(0xFFF5F9FE)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: size.height * 0.035,
                      horizontal: size.width * 0.04,
                    ),
                    filled: true,
                    fillColor:Color(0xFFF5F9FE),
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.grey[900],
                      fontSize: size.width * 0.04,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              // Forgot Password
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: size.width * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                  
                      },
                      child: Text(
                        'Forgot Password',
                        style: GoogleFonts.poppins(
                          fontSize: size.width * 0.04,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          color: textColor,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.02),
              // Sign In Button
              Button(
                onTap: signInUser,
                text: "Sign In",
              ),
              SizedBox(height: size.height * 0.0001),
              // Sign Up Linkrr
              Padding(
                padding: EdgeInsets.all(size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Do you have an account?",
                      style: GoogleFonts.poppins(
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: textColor,
                      ),
                    ),
                    SizedBox(width: size.width * 0.01),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.poppins(
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: mainHeading,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

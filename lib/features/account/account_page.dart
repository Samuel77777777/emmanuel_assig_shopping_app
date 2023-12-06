import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wow_shopping/features/login/Login/LoginScreen.dart';
import 'package:wow_shopping/features/login/Login/auth_button.dart';
import 'package:wow_shopping/features/login/colors.dart';

import 'package:wow_shopping/widgets/common.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Account'),
            verticalMargin48,
            verticalMargin48,
            Text(
              "Welcome back:" + user.email!,
              style: GoogleFonts.poppins(fontSize: 15, color: textColor),
            ),
            SizedBox(height: 50),
            Center(
              child: Button(text: "Logout", onTap: () => signUserOut(context)),
            ),
          ],
        ),
      ),
    );
  }
}

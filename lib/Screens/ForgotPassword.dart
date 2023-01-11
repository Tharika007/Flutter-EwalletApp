import 'package:flutter/material.dart';
import '../constant.dart';

import 'Signup.dart';
import 'Components/TopicContainer.dart';
import 'Components/TextFormField.dart';
import 'Components/RoundedButtons.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primarybackgroundcolor,
      appBar: AppBar(
        backgroundColor: primarybackgroundcolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Height * 0.2,
              width: double.infinity,
              margin: EdgeInsets.only(top: Height * 0.05, left: 5, right: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
              ),
            ),
            MiddleTopic(
              text: "Create New Password",
              margin:
                  EdgeInsets.only(bottom: Height * 0.020, top: Height * 0.020),
            ),
            TextFormFields(
              text: 'Crate new Password',
              press: () {},
              icon: Icons.lock,
            ),
            SizedBox(
              height: Height * 0.030,
            ),
            TextFormFields(
              text: 'Confirm new Password',
              press: () {},
              icon: Icons.lock,
            ),
            SizedBox(
              height: Height * 0.050,
            ),
            LinedRoundButton(
              text: "Reset Password",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

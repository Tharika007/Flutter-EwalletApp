import 'package:flutter/material.dart';

import 'Components/TopicContainer.dart';
import '../constant.dart';
import 'Components/TextFormField.dart';
import 'Components/RoundedButtons.dart';

class PhoneVerification extends StatefulWidget {
  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
              text: "Verify Your Phone Number",
              margin:
                  EdgeInsets.only(bottom: Height * 0.070, top: Height * 0.070),
            ),
            SubTopic(
              text: "Enter your Phone number here",
              margin: EdgeInsets.only(top: Height * 0.050, left: 5, right: 5),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                style: const TextStyle(fontSize: 18, color: Colors.white),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: primarygoldcolor, width: 2.0),
                  ),
                ),
              ),
            ),
            LonglinedButton(
              text: "Get OTP",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

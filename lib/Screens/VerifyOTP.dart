import 'package:flutter/material.dart';

import '../constant.dart';
import 'package:ewallet/Screens/Components/TopicContainer.dart';
import 'Components/RoundedButtons.dart';
import 'Components/TextFormField.dart';

class VerifyOTP extends StatefulWidget {
  @override
  _VerifyOTPState createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
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
              height: Height * 0.3,
              width: double.infinity,
              margin: EdgeInsets.only(top: Height * 0.05, left: 5, right: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
              ),
            ),
            MiddleTopic(
              text: "OTP Verification",
              margin:
                  EdgeInsets.only(bottom: Height * 0.070, top: Height * 0.070),
            ),
            SubTopic(
              text: "Enter your OTP here",
              margin: EdgeInsets.only(top: Height * 0.050, left: 5, right: 5),
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SmallTextFormFields(
                    press: () {},
                  ),
                  SmallTextFormFields(
                    press: () {},
                  ),
                  SmallTextFormFields(
                    press: () {},
                  ),
                  SmallTextFormFields(
                    press: () {},
                  ),
                ],
              ),
            ),
            LonglinedButton(
              text: "Verify OTP",
              press: () {},
            ),
            InkWell(
                onTap: () {}, child: const SignupContainer(text: "Resend Code"))
          ],
        ),
      ),
    );
  }
}

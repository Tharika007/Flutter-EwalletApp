import 'package:flutter/material.dart';
import '../constant.dart';

import 'Components/RectangleTextFormFields.dart';
import 'Components/TopicContainer.dart';
import 'Components/RectangleButton.dart';
import 'Components/TextFormField.dart';
import 'Components/RoundedButtons.dart';

class AddAmount extends StatefulWidget {
  @override
  _AddAmountState createState() => _AddAmountState();
}

class _AddAmountState extends State<AddAmount> {
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
            SubTopic03(
              text: 'Enter Amount',
              margin: EdgeInsets.only(top: Height * 0.2, bottom: Height * 0.1),
            ),
            WhiteLinedTextformField(
              press: () {},
              hint: '\$',
              margin: EdgeInsets.only(
                bottom: Height * 0.2,
                right: 25,
                left: 25,
              ),
            ),
            Container(
              height: Height * 0.2,
              width: double.infinity,
              margin: EdgeInsets.only(top: Height * 0.3, left: 25, right: 25),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
              ),
            ),
            LongRoundedButton02(
              text: 'Confirm',
              press: () {},
              margin: EdgeInsets.only(
                  top: Height * 0.2, bottom: Height * 0.1, left: 25, right: 25),
            ),
          ],
        ),
      ),
    );
  }
}

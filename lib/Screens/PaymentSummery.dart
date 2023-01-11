import 'package:flutter/material.dart';
import '../constant.dart';

import 'Components/RectangleTextFormFields.dart';
import 'Components/TopicContainer.dart';
import 'Components/RectangleButton.dart';
import 'Components/TextFormField.dart';
import 'Components/RoundedButtons.dart';
import 'Components/RectangleButton.dart';

class PaymentSummery extends StatefulWidget {
  @override
  _PaymentSummeryState createState() => _PaymentSummeryState();
}

class _PaymentSummeryState extends State<PaymentSummery> {
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
              text: 'Payment Summery',
              margin: EdgeInsets.only(top: Height * 0.2, bottom: Height * 0.1),
            ),
            Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: const Divider(color: primarygoldcolor)),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              height: Height * 0.2,
              width: double.infinity,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'To',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: primarywhite,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: const Divider(color: primarygoldcolor)),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              height: Height * 0.2,
              width: double.infinity,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Method',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: primarywhite,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: const Divider(color: primarygoldcolor)),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              height: Height * 0.2,
              width: double.infinity,
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Amount',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      color: primarywhite,
                    ),
                  ),
                ],
              ),
            ),

           SizedBox(height: Height * 0.2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 RectangleButton(
              text: 'Pay',
              press: () {},
            ),
             RectangleButton(
              text: 'Cancel',
              press: () {},
            ),

              ],
            )
           
          ],
        ),
      ),
    );
  }
}

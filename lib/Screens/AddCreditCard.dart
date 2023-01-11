import 'package:ewallet/Screens/PaymentMethod.dart';
import 'package:flutter/material.dart';
import '../constant.dart';

import './PaymentMethod.dart';
import 'Components/TopicContainer.dart';
import 'Components/RectangleTextFormFields.dart';
import 'Components/RectangleButton.dart';

class AddCreditCard extends StatefulWidget {
  @override
  _AddCreditCardState createState() => _AddCreditCardState();
}

class _AddCreditCardState extends State<AddCreditCard> {
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
              text: "Add Credit Card",
              margin:
                  EdgeInsets.only(bottom: Height * 0.050, top: Height * 0.050),
            ),

            RectangleTextFormField(
              margin: EdgeInsets.only(left: 5, right: 5),
              press: () {},
              text: 'Name on card',
              icon: Icons.person,
              validator: (text) {
                if (text!.isEmpty) {
                  //recheck this
                  return 'Bank name cannot be empty';
                }
                return null;
              },
            ),
            RectangleTextFormField(
              margin: EdgeInsets.only(top: Height * 0.05, left: 5, right: 5),
              press: () {},
              text: 'Card Number',
              icon: Icons.credit_card,
              validator: (text) {
                if (text!.isEmpty) {
                  //recheck this
                  return 'Bank name cannot be empty';
                }
                return null;
              },
            ),

            RectangleTextFormField(
              margin: EdgeInsets.only(top: Height * 0.05, left: 5, right: 5),
              press: () {},
              text: 'Expiry Date',
              icon: Icons.calendar_today,
              validator: (text) {
                if (text!.isEmpty) {
                  //recheck this
                  return 'Bank name cannot be empty';
                }
                return null;
              },
            ),
            RectangleTextFormField(
              margin: EdgeInsets.only(top: Height * 0.05, left: 5, right: 5),
              press: () {},
              text: 'Security Code',
              icon: Icons.security,
              validator: (text) {
                if (text!.isEmpty) {
                  //recheck this
                  return 'Bank name cannot be empty';
                }
                return null;
              },
            ),

            //button
            RectangleButton(
              text: "Add Card",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

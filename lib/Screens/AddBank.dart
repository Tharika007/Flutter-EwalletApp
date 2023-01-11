import 'package:flutter/material.dart';
import '../constant.dart';

import 'Components/RectangleTextFormFields.dart';
import 'Components/TopicContainer.dart';
import 'Components/RectangleButton.dart';

class AddBank extends StatefulWidget {
  @override
  _AddBankState createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {
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
              text: "Add Your Bank Account",
              margin:
                  EdgeInsets.only(left: 5, right: 5),
            ),
              Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RectangleTextFormField(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      press: () {},
                      text: 'Account Number',
                      icon: Icons.account_balance,
                      validator: (text) {
                        if (text!.isEmpty) {
                          //recheck this
                          return 'Bank account cannot be empty';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: Height * 0.025),

                    RectangleTextFormField(
                      margin: EdgeInsets.only(top: Height * 0.05, left: 5, right: 5),
                      press: () {},
                      text: 'Bank Name',
                      icon: Icons.house,
                      validator: (text) {
                        if (text!.isEmpty) {
                          //recheck this
                          return 'Bank name cannot be empty';
                        }
                        return null;
                      },
                    ),

                     SizedBox(height: Height * 0.025),

                    RectangleTextFormField(
                      margin: EdgeInsets.only(top: Height * 0.05, left: 5, right: 5),
                      press: () {},
                      text: 'Bank Code',
                      icon: Icons.code,
                      validator: (text) {
                        if (text!.isEmpty) {
                          //recheck this
                          return 'Bank code cannot be empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: Height * 0.025),
                    RectangleTextFormField(
                      margin: EdgeInsets.only(top: Height * 0.05, left: 5, right: 5),
                      press: () {},
                      text: 'Security Code',
                      icon: Icons.security,
                      validator: (text) {
                        if (text!.isEmpty) {
                          //recheck this
                          return 'Bank code cannot be empty';
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: Height * 0.025),

                    RectangleButton(
                      text: "Add Bank",
                      press: () {},
                    ),
                  ],
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constant.dart';
import 'package:ewallet/Screens/Components/TopicContainer.dart';
import 'Components/TextFormField.dart';
import 'Components/TopicContainer.dart';
import 'Components/RoundedButtons.dart';
import 'package:ewallet/Screens/PaymentMethod.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
        child: Form(
          key: _formkey,
          
            child: Column(
              children: <Widget>[
                
                MainTopic(
                  text: 'SignUp',
                  margin: EdgeInsets.only(top: Height * 0.1, bottom: Height * 0.060),
                ),

                TextFormFields(
                  text: 'UserName',
                  press: () {},
                  icon: Icons.person,
                ),

               SizedBox(
                height: Height * 0.025,
            ),

                TextFormFields(
                  text: 'Email',
                  press: () {},
                  icon: Icons.email,
                ),

                SizedBox(
              height: Height * 0.025,
            ),

               
                TextFormFields(
                  text: 'Password',
                  press: () {},
                  icon: Icons.lock,
                ),

                SizedBox(
              height: Height * 0.1,
            ),

                //Signup button
                LinedRoundButton(
                  text: "Continue",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentMethod()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}

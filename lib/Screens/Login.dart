import 'package:flutter/material.dart';

import '../constant.dart';
import 'Signup.dart';
import 'ForgotPassword.dart';
import 'package:ewallet/Screens/Components/TopicContainer.dart';
import 'Components/TextFormField.dart';
import 'Components/TopicContainer.dart';
import 'Components/RoundedButtons.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MainTopic(
              text: 'Login',
              margin:
                  EdgeInsets.only(bottom: Height * 0.025, top: Height * 0.070),
            ),

            SubTopic(
              text: 'Welcome Back! Login with your credentials',
              margin: EdgeInsets.only(bottom: Height * 0.1),
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
              text: 'Password',
              press: () {},
              icon: Icons.lock,
            ),

            SizedBox(
              height: Height * 0.025,
            ),

            //forgot password button
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassword()),
              ),
              child: const ForgotPasswordLogin(
                text: 'Forgot Password?',
              ),
            ),

            //Login button
            LinedRoundButton(
              text: "Login",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
            ),

            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: Height * 0.2),
                  height: Height * 0.1,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Don't have an account?",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: primarywhite, fontSize: 18),
                      ),
                      InkWell(
                          onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()),
                              ),
                          child: const SignupContainer(text: "Signup")),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

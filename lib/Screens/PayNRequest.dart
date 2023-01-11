import 'package:flutter/material.dart';

import '../constant.dart';
import 'package:ewallet/Screens/Components/TopicContainer.dart';
import 'Components/RoundedButtons.dart';
import 'package:ewallet/Screens/AddBank.dart';
import 'package:ewallet/Screens/AddCreditCard.dart';
import 'package:ewallet/Screens/SearchPeople.dart';

class PayNRequest extends StatefulWidget {
  @override
  PayNRequestState createState() => PayNRequestState();
}

class PayNRequestState extends State<PayNRequest> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primarybackgroundcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SubTopic03(
            text: "Pay Or Request",
            margin: EdgeInsets.only(top: Height * 0.2, bottom: Height * 0.075),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: Height * 0.6,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 238, 177, 74),
                    Color.fromARGB(255, 255, 255, 255),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0),
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallRoundedButton(
                      text: 'Pay',
                      margin: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 50.0),
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchPeople()),
                        );
                      },
                    ),
                    SmallRoundedButton(
                      text: 'Request',
                      margin: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 50.0),
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchPeople()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

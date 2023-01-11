import 'dart:io';

import 'package:flutter/material.dart';
import '../../constant.dart';
import 'Components/TopicContainer.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'Components/RoundedButtons.dart';
import 'package:ewallet/Screens/SearchPeople.dart';

class WalletBalance extends StatefulWidget {
  @override
  _WalletBalanceState createState() => _WalletBalanceState();
}

class _WalletBalanceState extends State<WalletBalance> {
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
              margin: const EdgeInsets.only(bottom: 0.050, left: 20),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: Height * 0.020),
                  SubTopic02(
                    text: 'Balance',
                  ),
                  SizedBox(height: Height * 0.020),
                  Container(
                    margin: EdgeInsets.only(bottom: Height * 0.050),
                    width: double.infinity,
                    child: Text(
                      '\$',
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 20,
                        color: primarywhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              color: primarywhite,
            ),
            Container(
              margin: EdgeInsets.only(top: Height * 0.040, right: 10, left: 10),
              height: Height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 5.0,
                    percent: 1.0,
                    center: const Text(
                      "100%",
                      style: TextStyle(color: primarygoldcolor),
                    ),
                    progressColor: primarygoldcolor,
                  ),
                  Text(
                    "Total Savings",
                    style: const TextStyle(
                      fontSize: 22,
                      color: primarywhite,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 12, left: 10),
                    width: 100,
                    child: const Text(
                      '\$',
                      style: TextStyle(
                        color: primarygoldcolor,
                        fontSize: 20,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(31, 240, 236, 236),
                    ),
                    height: 50,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: Height * 0.1),
              width: double.infinity,
              height: Height * 0.9,
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
              child: Column(
                children: [
                  LongRoundedButton03(
                    text: 'Top Up Balance',
                    margin: EdgeInsets.only(
                        top: Height * 0.050,
                        bottom: Height * 0.025,
                        left: 15,
                        right: 15),
                    press: () {},
                  ),
                  Row(
                    children: [
                      SmallRoundedButton(
                        text: 'Transfer',
                        margin: EdgeInsets.only(
                            top: Height * 0.025,
                            bottom: Height * 0.025,
                            left: 15,
                            right: 15),
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
                        margin: EdgeInsets.only(
                            top: Height * 0.025,
                            bottom: Height * 0.025,
                            left: 15,
                            right: 15),
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
                 LongRoundedButton03(
                    text: 'Friends Connected',
                    margin: EdgeInsets.only(
                        top: Height * 0.050,
                        bottom: Height * 0.025,
                        left: 15,
                        right: 15),
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

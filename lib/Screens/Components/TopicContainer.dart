import 'package:flutter/material.dart';

import '/../constant.dart';

class ForgotPasswordLogin extends StatelessWidget {
  final String text;
  final Color color, textColor;

  const ForgotPasswordLogin({
    Key? key,
    required this.text,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final width = MediaQuery.of(context).size.width;

    return Container(
      height: Height * 0.1,
      margin: EdgeInsets.only(top: Height * 0.060, right: 20),
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.right,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(221, 109, 105, 105),
        ),
      ),
    );
  }
}

//signup in login screen
class SignupContainer extends StatelessWidget {
  final String text;
  final Color color, textColor;

  const SignupContainer({
    Key? key,
    required this.text,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        color: Color.fromARGB(221, 124, 123, 209),
      ),
    );
  }
}

//Main Topic container
class MainTopic extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final EdgeInsets margin;

  const MainTopic({
    Key? key,
    required this.text,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _Height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;

    final _Width = MediaQuery.of(context).size.width;

    return Container(
      margin: margin,
      height: _Height * 0.1,
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 45,
          color: primarywhite,
        ),
      ),
    );
  }
}

class MiddleTopic extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final EdgeInsets margin;

  const MiddleTopic({
    Key? key,
    required this.text,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _Height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;

    final _Width = MediaQuery.of(context).size.width;

    return Container(
      height: _Height * 0.2,
      margin: margin,
      //margin: EdgeInsets.only(bottom: _Height * 0.1),
      child: FittedBox(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
            color: primarywhite,
          ),
        ),
      ),
    );
  }
}

class MiddleTopic02 extends StatelessWidget {
  final String text;
  final Color color, textColor;

  const MiddleTopic02({
    Key? key,
    required this.text,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _Height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;

    final _Width = MediaQuery.of(context).size.width;

    return Container(
      height: _Height * 0.3,
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          color: primarywhite,
        ),
      ),
    );
  }
}

//Subtpic Container
class SubTopic extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final EdgeInsets margin;

  const SubTopic({
    Key? key,
    required this.text,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;

    final Width = MediaQuery.of(context).size.width;

    return Container(
      height: Height * 0.1,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18,
          color: primarywhite,
        ),
      ),
    );
  }
}

class SubTopic02 extends StatelessWidget {
  final String text;
  final Color color, textColor;

  const SubTopic02({
    Key? key,
    required this.text,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final Width = MediaQuery.of(context).size.width;

    return Container(
      //padding: EdgeInsets.all(0),
      //height: Height * 0.3,
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 20,
          color: primarywhite,
        ),
      ),
    );
  }
}

//
class Container02 extends StatelessWidget {
  final String text;
  final Color color, textColor;

  const Container02({
    Key? key,
    required this.text,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Text(
      text,
      style: const TextStyle(
        fontSize: 45,
        color: primarywhite,
      ),
    );
  }
}

class SubTopic03 extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final EdgeInsets margin;

  const SubTopic03({
    Key? key,
    required this.text,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final Width = MediaQuery.of(context).size.width;

    return Container(
      margin: margin,
      height: Height * 0.2,
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          color: primarywhite,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '/../constant.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function() press;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final width = MediaQuery.of(context).size.width;

    return Container(
      width: 190,
      height: Height * 0.095,
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          primary: primarygoldcolor,
          onPrimary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
      ),
    );
  }
}

//Long Rounded Button
class LongRoundedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Function() press;
  final EdgeInsets margin, padding;
  final IconData icon;

  const LongRoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.textColor = primarywhite,
    required this.margin,
    required this.icon,
    this.padding = const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: press,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            Icon(
              icon,
              color: primarygoldcolor,
              size: 20,
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          padding: padding,
          minimumSize: Size.zero,
          primary: Colors.black,
          onPrimary: primarywhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
      ),
    );
  }
}

class LongRoundedButton02 extends StatelessWidget {
  final String text;
  final Color textColor;
  final Function() press;
  final EdgeInsets margin;

  const LongRoundedButton02({
    Key? key,
    required this.text,
    required this.press,
    this.textColor = primarywhite,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          primary: primarygoldcolor,
          onPrimary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
      ),
    );
  }
}

class LinedRoundButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function() press;

  const LinedRoundButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final width = MediaQuery.of(context).size.width;

    return Container(
      width: 190,
      height: Height * 0.095,
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          side: const BorderSide(width: 2.5, color: primarygoldcolor),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: primarywhite,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

class LonglinedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function() press;

  const LonglinedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: Height * 0.095,
      margin: EdgeInsets.only(
        top: Height * 0.1,
        bottom: Height * 0.050,
        left: 10,
        right: 10,
      ),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          primary: primarygoldcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          side: const BorderSide(width: 2.5, color: primarygoldcolor),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class SmallRoundedButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function() press;
  final EdgeInsets margin;

  const SmallRoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final width = MediaQuery.of(context).size.width;

    return Container(
      width: 140,
      height: Height * 0.2,
      margin: EdgeInsets.only(
        top: Height * 0.1,
        bottom: Height * 0.050,
        left: 20,
        right: 20,
      ),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          primary: primarygoldcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          side: const BorderSide(width: 2.5, color: primarygoldcolor),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class LongRoundedButton03 extends StatelessWidget {
  final String text;
  final Color textColor;
  final Function() press;
  final EdgeInsets margin;

  const LongRoundedButton03({
    Key? key,
    required this.text,
    required this.press,
    this.textColor = primarywhite,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      height: 80,
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          primary: Colors.black,
          onPrimary: primarywhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final Color textColor;
  final Function() press;
  final EdgeInsets margin;
  final IconData icon;

  const CircleButton({
    Key? key,
    required this.press,
    this.textColor = primarywhite,
    required this.margin,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: RaisedButton(
        onPressed: press,
        color: primarygoldcolor,
        textColor: Colors.white,
        shape: CircleBorder(side: BorderSide.none),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

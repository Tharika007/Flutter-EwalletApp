import 'package:flutter/material.dart';

import '/../constant.dart';

class RectangleButton extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final Function() press;

  const RectangleButton({
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
      margin: EdgeInsets.only(top: Height * 0.025, bottom: Height * 0.025, left: 25, right: 25),
      width: 140,
      height: 60,
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
        ),
      ),
    );
  }
}

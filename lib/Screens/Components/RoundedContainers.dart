import 'package:flutter/material.dart';

import '/../constant.dart';

//Long Round 
class LongRoundContainer extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final IconData icon;

  const LongRoundContainer({
    required this.text,
    required this.press,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
    );
  }
}

class ContentRoundContainer extends StatelessWidget {
  const ContentRoundContainer(
    Row row, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _Height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    //kToolbarHeight;

    final _Width = MediaQuery.of(context).size.width;

    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        height: _Height * 0.6,

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
      ),
    );
  }
}

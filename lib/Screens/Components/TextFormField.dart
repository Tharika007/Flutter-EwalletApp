import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '/../constant.dart';

class TextFormFields extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final IconData icon;

  const TextFormFields({
    Key? key,
    required this.text,
    required this.press,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25, left: 25),
      child: TextFormField(
        style: const TextStyle(fontSize: 20, color: primarywhite),
        decoration: InputDecoration(
          labelText: text,
          prefixIcon: Icon(
            icon,
            color: primarygoldcolor,
            size: 30,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: primarygoldcolor, width: 2.5),
          ),
        ),
      ),
    );
  }
}

class PlainRoundedTextFormField extends StatelessWidget {
  final Function press;
  final Color color, textColor;

  const PlainRoundedTextFormField({
    Key? key,
    required this.press,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25, left: 25),
      child: TextFormField(
        style: const TextStyle(fontSize: 20, color: primarywhite),
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primarygoldcolor, width: 2.5),
          ),
        ),
      ),
    );
  }
}

class SmallTextFormFields extends StatelessWidget {
  final Function press;
  final Color color, textColor;

  const SmallTextFormFields({
    Key? key,
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
      margin: EdgeInsets.only(
          top: Height * 0.02, bottom: Height * 0.02, left: 10, right: 10),
      height: Height * 0.1,
      width: 60,
      child: TextFormField(
        style: const TextStyle(fontSize: 20, color: Colors.white),
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: primarygoldcolor, width: 2.0),
          ),
        ),
      ),
    );
  }
}

class WhiteLinedTextformField extends StatelessWidget {
  final String hint;
  final Function press;
  final Color color, textColor;
  final EdgeInsets margin;

  const WhiteLinedTextformField({
    Key? key,
    required this.hint,
    required this.press,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        style: const TextStyle(fontSize: 30, color: primarywhite),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 40),
          hintText: hint,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: primarywhite, width: 2.5),
          ),
        ),
      ),
    );
  }
}

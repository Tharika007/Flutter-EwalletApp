import 'package:flutter/material.dart';

import '/../constant.dart';

class RectangleTextFormField extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final IconData icon;
  final FormFieldValidator validator;
  final EdgeInsets margin;

  const RectangleTextFormField({
    Key? key,
    required this.text,
    required this.press,
    this.color = primarygoldcolor,
    this.textColor = primarywhite,
    required this.icon,
    required this.validator,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: margin,
      child: TextFormField(
        validator: validator,
        style: TextStyle(fontSize: 20, color: primarywhite),
        decoration: InputDecoration(
          labelText: text,
          contentPadding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
          prefixIcon: Icon(
            icon,
            color: primarygoldcolor,
            size: 30,
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: primarygoldcolor, width: 2.5),
          ),
        ),
      ),
    );
  }
}

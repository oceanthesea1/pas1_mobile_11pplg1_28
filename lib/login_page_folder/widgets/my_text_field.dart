import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final bool isObsecure;
  final TextStyle textStyle;

  final Color fillColor;
  final bool filled;

  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final double borderRadius;

  final TextEditingController controller;

  const MyTextField({
    super.key,
    required this.labelText,
    required this.isObsecure,
    required this.textStyle,
    required this.fillColor,
    required this.filled,
    required this.enabledBorderColor,
    required this.focusedBorderColor,
    required this.borderRadius,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          controller: controller,
          obscureText: isObsecure,
          style: textStyle,
          decoration: InputDecoration(
            labelText: labelText,
            filled: filled,
            fillColor: fillColor,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: enabledBorderColor),
                borderRadius: BorderRadius.circular(borderRadius)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: focusedBorderColor),
                borderRadius: BorderRadius.circular(borderRadius)),
          )),
    );
  }
}

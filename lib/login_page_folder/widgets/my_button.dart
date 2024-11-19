import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String textButton;
  final Color textColor;
  final Color backgroundColor;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final double elevation;
  final VoidCallback onPressed;
  final double height;

  const MyButton(
      {super.key,
      required this.textButton,
      required this.textColor,
      required this.backgroundColor,
      required this.borderRadius,
      required this.elevation,
      required this.onPressed,
      required this.height,
      required this.borderColor,
      required this.borderWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor, 
          width: borderWidth
        ),
        borderRadius: BorderRadius.circular(borderRadius), 
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: textColor,
            elevation: elevation,
        ), 
        onPressed: onPressed,
        child: Text(textButton),
      ),
    );
  }
}

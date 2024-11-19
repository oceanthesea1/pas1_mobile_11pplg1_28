import 'package:flutter/material.dart';
import 'package:pas1_mobile_11pplg1_28/widgets/my_color_list.dart';

class MyList extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color secondTextColor;
  final Color splashColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double secondFontSize;
  final FontWeight secondFontWeight;
  final String text;
  final String secondText;
  final VoidCallback? onTap;
  final double borderRadius;
  final double height;
  final double imageBorderRadius;

  const MyList({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.secondTextColor,
    required this.splashColor,
    required this.fontSize,
    required this.fontWeight,
    required this.secondFontSize,
    required this.secondFontWeight,
    required this.text,
    required this.secondText,
    required this.borderRadius,
    required this.imageBorderRadius,
    required this.height,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Material(
        color: colorTransparent,
        child: InkWell(
          onTap: onTap,
          splashColor: splashColor,
          borderRadius: BorderRadius.circular(borderRadius),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          color: textColor,
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        secondText,
                        style: TextStyle(
                          color: secondTextColor,
                          fontSize: secondFontSize,
                          fontWeight: secondFontWeight,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyProfileMusicList extends StatelessWidget {
  final Color color;
  final Color textColor;
  final Color secondTextColor;
  final String imageUrl;
  final double imageSize;
  final double fontSize;
  final FontWeight fontWeight;
  final double secondFontSize;
  final FontWeight secondFontWeight;
  final String text;
  final String secondText;
  final double borderRadius;
  final double height;
  final double imageBorderRadius;

  const MyProfileMusicList(
      {super.key,
      required this.color,
      required this.textColor,
      required this.secondTextColor,
      required this.imageUrl,
      required this.imageSize,
      required this.fontSize,
      required this.fontWeight,
      required this.secondFontSize,
      required this.secondFontWeight,
      required this.text,
      required this.secondText,
      required this.borderRadius,
      required this.height,
      required this.imageBorderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(imageBorderRadius),
            child: Image.network(
              imageUrl,
              width: imageSize,
              height: imageSize,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16), 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
        ],
      ),
    );
  }
}

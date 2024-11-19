import 'package:flutter/material.dart';

class MyRoundedPicture extends StatelessWidget {
  final double borderRadius;
  final double imageSize;
  final String imageUrl;

  const MyRoundedPicture(
      {super.key,
      required this.borderRadius,
      required this.imageSize,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        imageUrl,
        width: imageSize, 
        height: imageSize,
        fit: BoxFit.cover,
      ),
    );
  }
}

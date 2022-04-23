import 'package:flutter/material.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

class ImageryWidget extends StatelessWidget {
  final double width;
  final double height;
  final double? borderRadius;
  final Color? color;

  const ImageryWidget(
      {Key? key,
      required this.width,
      required this.height,
      this.color,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color ?? AppColors.twitterStale100,
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(
          borderRadius ?? width,
        ),
      ),
    );
  }
}

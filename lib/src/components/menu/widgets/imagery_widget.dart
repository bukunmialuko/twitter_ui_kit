import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

class ImageryWidget extends StatelessWidget {
  final double? width;
  final double? height;

  const ImageryWidget({Key? key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 48.w,
      height: height ?? 48.w,
      decoration: const BoxDecoration(
        color: AppColors.twitterStale100,
        shape: BoxShape.circle,
      ),
    );
  }
}

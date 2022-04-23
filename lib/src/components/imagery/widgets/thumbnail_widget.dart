import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

class ThumbnailWidget extends StatelessWidget {
  const ThumbnailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        width: 84.w,
        height: 84.w,
        color: AppColors.twitterStale100,
      ),
    );
  }
}

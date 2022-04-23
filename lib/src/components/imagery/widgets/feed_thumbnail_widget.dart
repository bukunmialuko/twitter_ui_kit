import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

class FeedThumbnailWidget extends StatelessWidget {
  const FeedThumbnailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        width: 237.w,
        height: 171.h,
        color: AppColors.twitterStale100,
      ),
    );
  }
}

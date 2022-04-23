import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 203.h,
        width: 367.w,
        color: AppColors.twitterStale100,
        padding: EdgeInsets.all(14.r),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Body text goes here',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 4),
              Text(
                'Article title',
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 1,
              ),
              const SizedBox(height: 4),
              Text(
                'Body text goes here',
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

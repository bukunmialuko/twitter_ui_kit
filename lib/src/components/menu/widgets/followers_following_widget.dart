import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

class FollowersFollowing extends StatelessWidget {
  const FollowersFollowing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        children: [
          Text(
            '# ',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'Following ',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.twitterStale100,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            '# ',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'Following',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.twitterStale100,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

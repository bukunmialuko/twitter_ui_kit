import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/components/menu/widgets/imagery_widget.dart';

import '../../../res/colors.dart';

class ThumbnailItemWidget extends StatelessWidget {
  const ThumbnailItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326.w,
      height: 108.h,
      color: Colors.white,
      padding: EdgeInsets.only(left: 12.w, right: 12.w),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Timestamp',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.twitterStale100,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Title',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.twitterStale100,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Body text goes here',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.twitterStale100,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          ImageryWidget(
            width: 84.w,
            height: 84.w,
            color: AppColors.twitterGrey100,
          )
        ],
      ),
    );
  }
}

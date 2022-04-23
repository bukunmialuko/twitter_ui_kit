import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuAuthorWidget extends StatelessWidget {
  const MenuAuthorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      padding: EdgeInsets.only(left: 12.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Author',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            'Body text goes here',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/colors.dart';

class InputWidget extends StatelessWidget {
  final Color? color;
  final double? width;
  final TextEditingController controller;

  const InputWidget(
      {Key? key, required this.controller, this.color, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      color: AppColors.twitterWhite100,
      child: Center(
        child: Container(
          height: 28.h,
          width: width ?? 356.w,
          decoration: BoxDecoration(
            color: color ?? AppColors.twitterGrey100,
            border: Border.all(color: color ?? AppColors.twitterGrey100),
            borderRadius: BorderRadius.circular(30.r),
          ),
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Center(
            child: TextFormField(
              controller: controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration.collapsed(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: AppColors.twitterWhite100,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

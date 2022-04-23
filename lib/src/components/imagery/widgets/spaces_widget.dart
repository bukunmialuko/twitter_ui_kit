import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/colors.dart';
import '../../menu/widgets/imagery_widget.dart';

class SpacesWidget extends StatelessWidget {
  const SpacesWidget({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LIVE',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 2,
              ),
              const Spacer(),
              Text(
                'Article title',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
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
              const SizedBox(height: 4),
              Row(
                children: [
                  ImageryWidget(
                    width: 24.w,
                    height: 24.w,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

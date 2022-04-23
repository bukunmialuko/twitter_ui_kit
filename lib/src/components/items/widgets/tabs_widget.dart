import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

class TabsWidget extends StatelessWidget implements PreferredSizeWidget {
  final TabController controller;
  final List<Tab> tabs;
  const TabsWidget({Key? key, required this.controller, required this.tabs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 40.h,
      backgroundColor: Colors.white,
      title: const SizedBox.shrink(),
      bottom: TabBar(
        isScrollable: true,
        labelColor: AppColors.twitterStale100,
        unselectedLabelColor: AppColors.twitterStale100.withOpacity(.5),
        indicatorColor: AppColors.twitterBlue100,
        labelStyle: TextStyle(
          color: AppColors.twitterStale100,
          fontSize: 14.sp,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColors.twitterStale100.withOpacity(.5),
          fontSize: 14.sp,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
        ),
        controller: controller,
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.only(left: 12.w, right: 20.w),
        indicatorPadding: EdgeInsets.only(left: 12.w, right: 20.w, bottom: 2.h),
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40.h);
}

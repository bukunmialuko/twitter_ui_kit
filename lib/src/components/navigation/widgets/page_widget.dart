import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_ui_kit/src/components/menu/widgets/imagery_widget.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

import '../../../navigation/navigation_service.dart';
import '../../../res/assets.dart';
import '../../input/widget/input_widget.dart';

class PageWidget extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController searchController;

  const PageWidget({Key? key, required this.searchController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      // color: Colors.red,
      child: AppBar(
        elevation: 0,
        toolbarHeight: 35.h,
        backgroundColor: Colors.white,
        title: Text(
          'Page title',
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.twitterStale100,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            GetIt.I.get<NavigationService>().back();
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: ImageryWidget(
              width: 35.w,
              height: 35.w,
              color: AppColors.twitterGrey100,
            ),
          ),
        ),
        actions: [
          SvgPicture.asset(
            Assets.INBOX,
            width: 24.r,
            height: 24.r,
            color: AppColors.twitterStale100,
          ),
        ],
        flexibleSpace: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: InputWidget(
              controller: searchController,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(130.h);
}

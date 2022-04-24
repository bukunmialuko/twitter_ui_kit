import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_ui_kit/src/components/menu/widgets/imagery_widget.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

import '../../../navigation/navigation_service.dart';
import '../../../res/assets.dart';

class FeedWidget extends StatelessWidget implements PreferredSizeWidget {
  const FeedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      // color: Colors.red,
      child: AppBar(
        elevation: 0,
        toolbarHeight: 35.h,
        backgroundColor: Colors.white,
        title: SvgPicture.asset(
          Assets.LOGO,
          width: 20.w,
          height: 25.h,
          fit: BoxFit.fitHeight,
          // color: AppColors.twitterBlue100,
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
            width: 24.w,
            height: 24.w,
            color: AppColors.twitterStale100,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(95.h);
}

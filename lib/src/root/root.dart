import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_ui_kit/src/navigation/navigation_service.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

import '../components/items/widgets/nav_item_widget.dart';
import '../routes/routes.dart';

class AppRootWidget extends StatelessWidget {
  const AppRootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Twitter UI Kit',
          style: TextStyle(
            fontSize: 16.sp,
            color: Colors.white,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.twitterBlue100,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            NavItemWidget(
              onClick: () {
                GetIt.I.get<NavigationService>().to(
                      routeName: MobileRoutes.components,
                    );
              },
              title: 'Components',
              iconUri: 'assets/svg/list.svg',
            ),
            SizedBox(height: 10.h),
            NavItemWidget(
              onClick: () {
                GetIt.I.get<NavigationService>().to(
                      routeName: MobileRoutes.imageryRoot,
                    );
              },
              title: 'App / Screens',
              iconUri: 'assets/svg/list.svg',
            ),
          ],
        ),
      ),
    );
  }
}

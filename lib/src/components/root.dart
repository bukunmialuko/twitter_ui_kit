import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_ui_kit/src/navigation/navigation_service.dart';

import '../res/colors.dart';
import '../routes/routes.dart';
import 'items/widgets/nav_item_widget.dart';

class ComponentRootWidget extends StatelessWidget {
  const ComponentRootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Components',
          style: TextStyle(
            fontSize: 14.sp,
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
                      routeName: MobileRoutes.menuRoot,
                    );
              },
              title: 'Menu',
              iconUri: 'assets/svg/list.svg',
            ),
            SizedBox(height: 10.h),
            NavItemWidget(
              onClick: () {
                GetIt.I.get<NavigationService>().to(
                      routeName: MobileRoutes.imageryRoot,
                    );
              },
              title: 'Imagery',
              iconUri: 'assets/svg/list.svg',
            ),
            SizedBox(height: 10.h),
            NavItemWidget(
              onClick: () {
                GetIt.I.get<NavigationService>().to(
                      routeName: MobileRoutes.itemsRoot,
                    );
              },
              title: 'Items',
              iconUri: 'assets/svg/list.svg',
            ),
            SizedBox(height: 10.h),
            NavItemWidget(
              onClick: () {
                GetIt.I.get<NavigationService>().to(
                      routeName: MobileRoutes.buttonsRoot,
                    );
              },
              title: 'Buttons',
              iconUri: 'assets/svg/list.svg',
            ),
            SizedBox(height: 10.h),
            NavItemWidget(
              onClick: () {
                GetIt.I.get<NavigationService>().to(
                      routeName: MobileRoutes.publishRoot,
                    );
              },
              title: 'Publish',
              iconUri: 'assets/svg/list.svg',
            ),
            SizedBox(height: 10.h),
            NavItemWidget(
              onClick: () {
                GetIt.I.get<NavigationService>().to(
                      routeName: MobileRoutes.inputRoot,
                    );
              },
              title: 'Input',
              iconUri: 'assets/svg/list.svg',
            ),
            SizedBox(height: 10.h),
            NavItemWidget(
              onClick: () {
                GetIt.I.get<NavigationService>().to(
                      routeName: MobileRoutes.navigationRoot,
                    );
              },
              title: 'Navigation',
              iconUri: 'assets/svg/list.svg',
            ),
          ],
        ),
      ),
    );
  }
}

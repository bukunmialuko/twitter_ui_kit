import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_ui_kit/src/navigation/navigation_service.dart';

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
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20.w),
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}

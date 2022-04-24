import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../res/assets.dart';
import '../../../res/colors.dart';
import 'tab_extension.dart';

class BottomNav extends StatelessWidget {
  final Tabs currentTab;
  final Color? backgroundColor;
  final ValueChanged<Tabs> tabSelected;

  const BottomNav(
      {Key? key,
      required this.currentTab,
      required this.tabSelected,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Platform.isIOS ? 85.h : 65.h,
      child: BottomNavigationBar(
        currentIndex: Tabs.values.indexOf(currentTab),
        unselectedLabelStyle: inActiveTextStyle(context),
        selectedLabelStyle: activeTextStyle(context),
        backgroundColor: backgroundColor ?? AppColors.twitterWhite100,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          tabSelected(Tabs.values.toList()[index]);
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            activeIcon: SvgPicture.asset(
              Assets.FEED_SELECTED,
              width: 20.r,
              height: 20.r,
              color: AppColors.twitterStale100,
            ),
            icon: SvgPicture.asset(
              Assets.FEED,
              width: 20.r,
              height: 20.r,
              color: AppColors.twitterStale100,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon: SvgPicture.asset(
              Assets.LIST_SELECTED,
              width: 20.r,
              height: 20.r,
              color: AppColors.twitterStale100,
            ),
            icon: SvgPicture.asset(
              Assets.LIST,
              width: 20.r,
              height: 20.r,
              color: AppColors.twitterStale100,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon: SvgPicture.asset(
              Assets.DISCOVER_SELECTED,
              width: 20.r,
              height: 20.r,
              color: AppColors.twitterStale100,
            ),
            icon: SvgPicture.asset(
              Assets.DISCOVER,
              width: 20.r,
              height: 20.r,
              color: AppColors.twitterStale100,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon: SvgPicture.asset(
              Assets.NOTIFICATIONS_SELECTED,
              width: 20.r,
              height: 20.r,
              color: AppColors.twitterStale100,
            ),
            icon: SvgPicture.asset(
              Assets.NOTIFICATIONS,
              width: 20.r,
              height: 20.r,
              color: AppColors.twitterStale100,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            activeIcon: SvgPicture.asset(
              Assets.INBOX_SELECTED,
              width: 20.r,
              height: 20.r,
              color: AppColors.twitterStale100,
            ),
            icon: SvgPicture.asset(
              Assets.INBOX,
              width: 20.r,
              height: 20.r,
              color: AppColors.twitterStale100,
            ),
          ),
        ],
      ),
    );
  }

  activeTextStyle(context) => TextStyle(
      fontSize: 12.sp,
      color: Theme.of(context).primaryColor,
      fontWeight: FontWeight.w600,
      height: 1.4);

  inActiveTextStyle(context) => TextStyle(
      fontSize: 12.sp,
      color: const Color(0XFFD4E1F5),
      fontWeight: FontWeight.w600,
      height: 1.4);
}

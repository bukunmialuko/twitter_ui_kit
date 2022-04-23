import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:twitter_ui_kit/src/navigation/navigation_service.dart';

import 'widgets/avatar_wrap_widget.dart';
import 'widgets/followers_following_widget.dart';
import 'widgets/menu_author_widget.dart';
import 'widgets/menu_item_widget.dart';

class MenuRootWidget extends StatefulWidget {
  const MenuRootWidget({Key? key}) : super(key: key);

  @override
  State<MenuRootWidget> createState() => _MenuRootWidgetState();
}

class _MenuRootWidgetState extends State<MenuRootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.twitterBlack100,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  GetIt.I.get<NavigationService>().back();
                },
                child: const AvatarWrapWidget(),
              ),
              SizedBox(height: 10.h),
              const MenuAuthorWidget(),
              SizedBox(height: 10.h),
              const FollowersFollowing(),
              SizedBox(height: 10.h),
              MenuItemWidget(
                onClick: () {},
                title: 'Home',
                iconUri: 'assets/svg/feed.svg',
              ),
              SizedBox(height: 10.h),
              MenuItemWidget(
                onClick: () {},
                title: 'Bookmarks',
                iconUri: 'assets/svg/bookmark.svg',
              ),
              SizedBox(height: 10.h),
              MenuItemWidget(
                onClick: () {},
                title: 'Messages',
                iconUri: 'assets/svg/message.svg',
              ),
              SizedBox(height: 10.h),
              MenuItemWidget(
                onClick: () {},
                title: 'Discover',
                iconUri: 'assets/svg/discover.svg',
              ),
              SizedBox(height: 10.h),
              MenuItemWidget(
                onClick: () {},
                title: 'Home',
                iconUri: 'assets/svg/feed.svg',
              ),
              SizedBox(height: 10.h),
              MenuItemWidget(
                onClick: () {},
                title: 'Lists',
                iconUri: 'assets/svg/list.svg',
              ),
              SizedBox(height: 10.h),
              MenuItemWidget(
                onClick: () {},
                title: 'Profile',
                iconUri: 'assets/svg/profile.svg',
              ),
              SizedBox(height: 10.h),
              MenuItemWidget(
                onClick: () {},
                title: 'Monetization',
                iconUri: 'assets/svg/notification.svg',
              ),
              SizedBox(height: 10.h),
              MenuItemWidget(
                onClick: () {},
                title: 'Follower requests',
                iconUri: 'assets/svg/feed.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

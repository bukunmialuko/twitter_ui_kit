import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/components/items/widgets/feed_item_widget.dart';
import 'package:twitter_ui_kit/src/components/items/widgets/thumbnail_item_widget.dart';

import '../../res/colors.dart';
import 'widgets/actions_item_widget.dart';
import 'widgets/message_item_widget.dart';
import 'widgets/nav_item_widget.dart';

class ItemsRootWidget extends StatefulWidget {
  const ItemsRootWidget({Key? key}) : super(key: key);

  @override
  State<ItemsRootWidget> createState() => _ItemsRootWidgetState();
}

class _ItemsRootWidgetState extends State<ItemsRootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twitterCharcoal100,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30.h),
              NavItemWidget(
                onClick: () {},
                iconUri: 'assets/svg/feed.svg',
                title: 'Home',
              ),
              SizedBox(height: 30.h),
              const MessageItemWidget(isRead: true),
              SizedBox(height: 30.h),
              const MessageItemWidget(isRead: false),
              SizedBox(height: 30.h),
              const ActionsItemWidget(),
              SizedBox(height: 30.h),
              const FeedItemWidget(),
              SizedBox(height: 30.h),
              const ThumbnailItemWidget()
            ],
          ),
        ),
      ),
    );
  }
}

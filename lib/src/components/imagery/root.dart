import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/components/imagery/widgets/thumbnail_widget.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

import 'widgets/avatar_widget.dart';
import 'widgets/feed_thumbnail_widget.dart';
import 'widgets/hero_widget.dart';
import 'widgets/spaces_widget.dart';

class ImageryRootWidget extends StatefulWidget {
  const ImageryRootWidget({Key? key}) : super(key: key);

  @override
  State<ImageryRootWidget> createState() => _ImageryRootWidgetState();
}

class _ImageryRootWidgetState extends State<ImageryRootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twitterCharcoal100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeroWidget(),
                SizedBox(height: 26.h),
                const SpacesWidget(),
                SizedBox(height: 26.h),
                const FeedThumbnailWidget(),
                SizedBox(height: 26.h),
                const ThumbnailWidget(),
                SizedBox(height: 26.h),
                const AvatarWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

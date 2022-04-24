import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_ui_kit/src/components/buttons/widgets/twitter_button.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

import '../../res/assets.dart';

class TweetRootWidget extends StatelessWidget {
  const TweetRootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> icons = [
      Assets.FEED,
      Assets.LIST,
      Assets.DISCOVER,
      Assets.BOOKMARK,
      Assets.INBOX,
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Cancel',
                        style: TextStyle(
                          color: AppColors.twitterStale100,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TweeterButton(
                        width: 50,
                        height: 40.h,
                        text: 'Tweet',
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                const Divider(thickness: 1),
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundColor: AppColors.twitterGrey100,
                  ),
                  SizedBox(width: 10.h),
                  const Text("What's happening"),
                  // Container(width: 100, child: TextField())
                ],
              ),
            ),
            SizedBox(height: 10.h),
            const Spacer(),
            Row(
              children: [
                const SizedBox(width: 20),
                SizedBox(
                  width: 200.w,
                  height: 40.h,
                  child: ListView.separated(
                    itemCount: icons.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 15.h);
                    },
                    itemBuilder: (context, index) {
                      return SvgPicture.asset(
                        icons[index],
                        width: 24.w,
                        height: 24.w,
                        color: AppColors.twitterBlack100,
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

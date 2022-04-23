import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/colors.dart';
import 'widgets/fab_widget.dart';
import 'widgets/twitter_button.dart';

class ButtonsRootWidget extends StatefulWidget {
  const ButtonsRootWidget({Key? key}) : super(key: key);

  @override
  State<ButtonsRootWidget> createState() => _ButtonsRootWidgetState();
}

class _ButtonsRootWidgetState extends State<ButtonsRootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twitterCharcoal100,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              const FabWidget(),
              SizedBox(height: 10.h),
              TweeterButton(
                width: 66.w,
                height: 36.w,
                text: 'Button',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

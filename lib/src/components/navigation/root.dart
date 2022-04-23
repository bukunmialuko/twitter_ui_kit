import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationRootWidget extends StatefulWidget {
  const NavigationRootWidget({Key? key}) : super(key: key);

  @override
  State<NavigationRootWidget> createState() => _NavigationRootWidgetState();
}

class _NavigationRootWidgetState extends State<NavigationRootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.twitterBlack100,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ),
    );
  }
}

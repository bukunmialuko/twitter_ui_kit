import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonsRootWidget extends StatefulWidget {
  const ButtonsRootWidget({Key? key}) : super(key: key);

  @override
  State<ButtonsRootWidget> createState() => _ButtonsRootWidgetState();
}

class _ButtonsRootWidgetState extends State<ButtonsRootWidget> {
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

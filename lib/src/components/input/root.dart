import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputRootWidget extends StatefulWidget {
  const InputRootWidget({Key? key}) : super(key: key);

  @override
  State<InputRootWidget> createState() => _InputRootWidgetState();
}

class _InputRootWidgetState extends State<InputRootWidget> {
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

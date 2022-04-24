import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/colors.dart';
import 'widget/input_widget.dart';

class InputRootWidget extends StatefulWidget {
  const InputRootWidget({Key? key}) : super(key: key);

  @override
  State<InputRootWidget> createState() => _InputRootWidgetState();
}

class _InputRootWidgetState extends State<InputRootWidget> {
  final TextEditingController _searchController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.twitterBlack100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.twitterBlue100,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              InputWidget(
                controller: _searchController,
              )
            ],
          ),
        ),
      ),
    );
  }
}

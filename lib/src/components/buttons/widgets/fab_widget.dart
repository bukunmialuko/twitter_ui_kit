import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

class FabWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  const FabWidget({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 48.w,
        height: 48.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.twitterBlue100,
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/svg/add.svg',
            width: 13.w,
            height: 13.w,
          ),
        ),
      ),
    );
  }
}

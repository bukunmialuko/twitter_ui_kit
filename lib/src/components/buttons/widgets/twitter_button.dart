import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../res/colors.dart';

class TweeterButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final String? text;
  final double? fontSize;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Color? color, borderColor, textColor;
  final double height;
  final double width;
  final double? borderRadius;
  const TweeterButton({
    Key? key,
    this.onPressed,
    this.child,
    this.text,
    this.fontSize,
    this.color,
    this.borderColor,
    this.textColor,
    this.verticalPadding,
    this.horizontalPadding,
    this.borderRadius,
    required this.width,
    required this.height,
  })  : assert(text != null || child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: color ?? AppColors.twitterBlue100,
            onSurface: color ?? AppColors.twitterBlue100,
            elevation: 0.0,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.symmetric(
                vertical: verticalPadding ?? 10.h,
                horizontal: horizontalPadding ?? 10.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 30.r),
              side: BorderSide(
                  color: onPressed == null
                      ? Colors.transparent
                      : borderColor ?? color ?? AppColors.twitterBlue100),
            ),
            minimumSize: Size(width, height)),
        child: text != null ? Text(text!, style: buttonTextStyle()) : child);
  }

  buttonTextStyle() {
    return TextStyle(
      fontSize: fontSize ?? 17.sp,
      color: textColor ?? borderColor ?? AppColors.twitterWhite100,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
    );
  }
}

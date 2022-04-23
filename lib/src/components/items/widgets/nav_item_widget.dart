import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

class NavItemWidget extends StatelessWidget {
  final String iconUri;
  final String title;
  final Function onClick;

  const NavItemWidget(
      {Key? key,
      required this.iconUri,
      required this.title,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        height: 48.h,
        width: 362.w,
        decoration: const BoxDecoration(
          color: Colors.white,
          // border: Border(
          //   bottom: BorderSide(
          //     color: const Color(0xffD3D3D3),
          //     width: .5.h,
          //   ),
          // ),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 12.w,
                right: 10.w,
                top: 12.w,
                bottom: 12.w,
              ),
              child: SvgPicture.asset(
                iconUri,
                width: 24.w,
                height: 24.w,
                color: AppColors.twitterBlack100,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}

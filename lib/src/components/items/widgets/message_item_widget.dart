import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/components/menu/widgets/imagery_widget.dart';
import 'package:twitter_ui_kit/src/res/colors.dart';

class MessageItemWidget extends StatelessWidget {
  final bool isRead;
  const MessageItemWidget({Key? key, required this.isRead}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 326.w,
      height: 72.h,
      color: Colors.white,
      child: Stack(
        children: [
          Center(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.w,
                    right: 10.w,
                  ),
                  child: ImageryWidget(
                    width: 48.w,
                    height: 48.w,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Author',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              'Timestamp',
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.twitterStale100,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Body text goes here',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.twitterStale100,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          isRead
              ? const SizedBox.shrink()
              : Container(
                  color: const Color(0xffD3E2ED).withOpacity(.2),
                )
        ],
      ),
    );
  }
}

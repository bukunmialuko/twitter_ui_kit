import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../res/colors.dart';
import '../../menu/widgets/imagery_widget.dart';
import 'dot_widget.dart';

class FeedItemWidget extends StatelessWidget {
  const FeedItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362.w,
      height: 243.35.h,
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 12.w, right: 12.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 10.w,
                ),
                child: ImageryWidget(
                  width: 48.w,
                  height: 48.w,
                  color: AppColors.twitterGrey100,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Author',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.twitterStale100,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const DotWidget(),
                        Text(
                          'Timestamp',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.twitterStale100,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Body text goes here',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.twitterStale100,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    ImageryWidget(
                      width: 281.w,
                      height: 138.h,
                      borderRadius: 10.r,
                      color: AppColors.twitterGrey100,
                    ),
                    SizedBox(
                      height: 37.35.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildUnion('assets/svg/comment_selected.svg', '123'),
                          _buildUnion('assets/svg/retweet.svg', '98'),
                          _buildUnion('assets/svg/like.svg', '7'),
                          _buildUnion('assets/svg/share.svg', '21')
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildUnion(String imageUri, String count) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SvgPicture.asset(
            imageUri,
            width: 17.35.w,
            height: 17.35.w,
            color: AppColors.twitterStale100,
          ),
        ),
        Text(
          count,
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.twitterStale100,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(width: 15.w)
      ],
    );
  }
}

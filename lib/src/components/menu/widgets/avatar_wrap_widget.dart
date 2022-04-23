import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/components/menu/widgets/imagery_widget.dart';

class AvatarWrapWidget extends StatelessWidget {
  const AvatarWrapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68.h,
      child: Row(
        children: const [ImageryWidget()],
      ),
    );
  }
}

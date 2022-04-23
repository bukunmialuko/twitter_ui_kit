import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/hero_widget.dart';
import 'widgets/spaces_widget.dart';

class ImageryRootWidget extends StatefulWidget {
  const ImageryRootWidget({Key? key}) : super(key: key);

  @override
  State<ImageryRootWidget> createState() => _ImageryRootWidgetState();
}

class _ImageryRootWidgetState extends State<ImageryRootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeroWidget(),
            SizedBox(height: 26.h),
            const SpacesWidget()
          ],
        ),
      ),
    );
  }
}

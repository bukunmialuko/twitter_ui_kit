import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui_kit/src/components/navigation/widgets/footer_widget.dart';

import 'widgets/page_widget.dart';
import 'widgets/tab_extension.dart';

class NavigationRootWidget extends StatefulWidget {
  const NavigationRootWidget({Key? key}) : super(key: key);

  @override
  State<NavigationRootWidget> createState() => _NavigationRootWidgetState();
}

class _NavigationRootWidgetState extends State<NavigationRootWidget> {
  late Tabs currentTab;
  @override
  void initState() {
    currentTab = Tabs.home;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // double x = 50 + MediaQuery.of(context).padding.bottom;
    // Container(
    //   width: x,
    //   height: x,
    //   color: Colors.red,
    //   child: Center(
    //     child: Text(
    //       '$x',
    //       style: const TextStyle(color: Colors.white),
    //     ),
    //   ),
    // )
    return Scaffold(
      // backgroundColor: AppColors.twitterBlack100,

      appBar: PageWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(
        currentTab: currentTab,
        tabSelected: (Tabs value) {
          setState(() {
            currentTab = value;
          });
        },
      ),
    );
  }
}

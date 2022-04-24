import 'package:flutter/material.dart';
import 'package:twitter_ui_kit/src/components/navigation/widgets/footer_widget.dart';

import '../components/navigation/widgets/feed_widget.dart';
import '../components/navigation/widgets/tab_extension.dart';
import '../res/colors.dart';
import 'home/root.dart';

class ScreensRootWidget extends StatefulWidget {
  const ScreensRootWidget({Key? key}) : super(key: key);

  @override
  State<ScreensRootWidget> createState() => _ScreensRootWidgetState();
}

class _ScreensRootWidgetState extends State<ScreensRootWidget> {
  late Tabs currentTab;

  @override
  void initState() {
    currentTab = Tabs.home;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twitterWhite100,
      appBar: const FeedWidget(),
      body: Stack(
        children: [
          HomeRootWidget(
            isCurrent: currentTab == Tabs.home,
            key: Key(Tabs.home.name),
          ),
          HomeRootWidget(
            isCurrent: currentTab == Tabs.list,
            key: Key(Tabs.list.name),
          ),
          HomeRootWidget(
            isCurrent: currentTab == Tabs.hashtag,
            key: Key(Tabs.hashtag.name),
          ),
          HomeRootWidget(
            isCurrent: currentTab == Tabs.notifications,
            key: Key(Tabs.notifications.name),
          ),
          HomeRootWidget(
            isCurrent: currentTab == Tabs.inbox,
            key: Key(Tabs.inbox.name),
          ),
        ],
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

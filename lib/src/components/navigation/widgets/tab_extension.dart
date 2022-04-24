enum Tabs { home, list, hashtag, notifications, inbox }

extension TabExt on Tabs {
  String get selectedIcon {
    switch (this) {
      case Tabs.home:
        return 'assets/svg/feed_selected.svg';
      case Tabs.list:
        return 'assets/svg/list_selected.svg';
      case Tabs.hashtag:
        return 'assets/svg/discover_selected.svg';
      case Tabs.notifications:
        return 'assets/svg/notification_selected.svg';
      case Tabs.inbox:
        return 'assets/svg/message_selected.svg';

      default:
        return '';
    }
  }

  String get unSelectedIcon {
    switch (this) {
      case Tabs.home:
        return 'assets/svg/feed.svg';
      case Tabs.list:
        return 'assets/svg/list.svg';
      case Tabs.hashtag:
        return 'assets/svg/discover.svg';
      case Tabs.notifications:
        return 'assets/svg/notification.svg';
      case Tabs.inbox:
        return 'assets/svg/message.svg';

      default:
        return '';
    }
  }
}

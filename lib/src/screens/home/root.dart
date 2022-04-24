import 'package:flutter/material.dart';

class HomeRootWidget extends StatelessWidget {
  final bool isCurrent;

  const HomeRootWidget({Key? key, required this.isCurrent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: !isCurrent,
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}

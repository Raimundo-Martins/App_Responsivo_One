import 'package:flutter/material.dart';
import 'package:reponsivo_one/breakPoints.dart';
import 'package:reponsivo_one/pages/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:reponsivo_one/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:reponsivo_one/pages/home/widgets/sections/top_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakPoint
              ? PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBar(),
                ),
          drawer: constraints.maxWidth < mobileBreakPoint ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1200),
              child: ListView(
                children: [
                  TopSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

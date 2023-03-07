// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:shop_flutter/views/widgets/appbar_widgets/mobile_app_bar.dart';
import 'package:shop_flutter/views/widgets/appbar_widgets/web_app_bar.dart.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: constraints.maxWidth < 800
            ? PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              )
            : PreferredSize(preferredSize: Size(double.infinity, 72),child: WebAppBar(),),
            drawer: constraints.maxWidth < 800  ? Drawer() : null,
            body: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1400),
                
                
                
                child: Container()),
            ),





      );
    });
  }
}

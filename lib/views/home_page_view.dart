// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_flutter/views/widgets/appbar_widgets/mobile_app_bar.dart';


class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
      
              constraints.maxWidth < 800 ?  MobileAppBar(): AppBar(),
      ));
    });
  }
}

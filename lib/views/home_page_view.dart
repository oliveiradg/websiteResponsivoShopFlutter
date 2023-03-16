// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop_flutter/views/widgets/appbar_widgets/courses_sections.dart';

import 'package:shop_flutter/views/widgets/appbar_widgets/mobile_app_bar.dart';
import 'package:shop_flutter/views/widgets/appbar_widgets/web_app_bar.dart.dart';
import 'package:shop_flutter/views/widgets/sections/advantages_section.dart';
import 'package:shop_flutter/views/widgets/sections/top_section.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth < 800
            ? PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              )
            : PreferredSize(preferredSize: Size(double.infinity, 72),child: WebAppBar(),),
            drawer: constraints.maxWidth < 1400  ? Drawer() : null,
            body: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1200),
                
                
                
                child:ListView(
                  children: const  [
                    TopSection(),
                    AdvantagesSection(),
                    CoursesSections(),

                  ],



                  
                ),),
            ),





      );
    });
  }
}

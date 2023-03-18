import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shop_flutter/views/widgets/cousers_item.dart';

class CoursesSections extends StatelessWidget {
  const CoursesSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return  GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          padding: EdgeInsets.symmetric(
              vertical: 16, horizontal: constraints.maxWidth >= 800 ? 0 : 16),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return const CousersItem();
          },
        
      );
    });


  }
}

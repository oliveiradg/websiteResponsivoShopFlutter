import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CoursesSections extends StatelessWidget {
  const CoursesSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        color: Colors.red,
        height: 200,
        width: constraints.maxWidth,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          padding: EdgeInsets.symmetric(
              vertical: 16, horizontal: constraints.maxWidth >= 1200 ? 0 : 16),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container();
          },
        ),
      );
    });


  }
}

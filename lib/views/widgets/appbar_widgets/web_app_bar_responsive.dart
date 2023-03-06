import 'package:flutter/material.dart';

class WebAppBarResponsive extends StatelessWidget {
  const WebAppBarResponsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey[600]!,
                  ),
                ),
                child: Row(
                  children:  [
                    IconButton(onPressed: (){}, 
                    icon: const  Icon(Icons.search),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'O que você procura?',
                        ),
                      
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

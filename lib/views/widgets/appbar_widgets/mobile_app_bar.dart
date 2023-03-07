import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      
      title: Row(
        children: const [
                 Icon(Icons.flutter_dash_outlined),
         SizedBox(width: 4,),
          Text('Aprenda Flutter'),
          
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}

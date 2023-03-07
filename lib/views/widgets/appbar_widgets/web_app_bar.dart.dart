import 'package:flutter/material.dart';

import 'package:shop_flutter/views/widgets/appbar_widgets/web_app_bar_responsive.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
         const Icon(Icons.flutter_dash_outlined),
         const SizedBox(width: 4,),
          const Text('Aprenda Flutter'),
          const SizedBox(
            width: 32,
          ),
          const WebAppBarResponsive(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
          const SizedBox(
            width: 32,
          ),
          SizedBox(
            height: 32,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: const Text(
                'Fazer Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 33,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                
              ),
              child: const Text('Cadastre-se'),
            ),
          ),
        ],
      ),
    );
  }
}

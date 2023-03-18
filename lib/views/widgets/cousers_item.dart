import 'package:flutter/material.dart';

class CousersItem extends StatelessWidget {
  const CousersItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        
      children: [
      Image.network(
          'https://coodesh.com/blog/wp-content/uploads/2021/10/mobile-flutter-1-1152x648.jpg'),
      const SizedBox(
        height: 4,
      ),
      const Text(
        'Curso de Flutter: Crie Apps Android e IOS com Flutter',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
      const Text(
        'Joao Oliveira',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      const Text(
        'R\$ 19,90',
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
      ),
    ]);
  }
}

import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildAdvantage(String title, String subtitle) {
      return Row(
        children:  [
       const    Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
            Column(children: [
              Text(title, style: const TextStyle(color: Colors.white, fontSize: 20),),

              Text(subtitle, style: const  TextStyle(color: Colors.white, fontSize: 20)),
            ],),
          
        ],
      );
    }

    return Wrap(
      children: [
        buildAdvantage('+45.000 alunos', 'Didática garantida'),
        buildAdvantage('+45.000 alunos', 'Didática garantida'),
        buildAdvantage('+45.000 alunos', 'Didática garantida'),
      ],
    );
  }
}

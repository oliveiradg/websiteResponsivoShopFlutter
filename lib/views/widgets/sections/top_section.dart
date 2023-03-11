import 'package:flutter/material.dart';
import 'package:shop_flutter/views/widgets/custom_search.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= 1100) {
        return AspectRatio(
          aspectRatio: 3.2,
          child:  Stack(
            children: [
            AspectRatio(
              aspectRatio: 3.2,
              child:   Image.network('https://www.apexon.com/wp-content/uploads/2022/09/flutter-3-1.png',
        fit: BoxFit.cover,
        ),
              
              ),
           Positioned(
            left: 50,
            top: 50,
            child: Card(
             color: Colors.black,
             elevation: 8,
             child: Container(
                width: 500,
                padding: const EdgeInsets.all(16),
               child: Column(
                 children: const [
                   Text('Aprenda Flutter 3.0 com o melhor do mercado. ',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 40,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                    SizedBox(height: 8,),
                   Text('Bora aprender Flutter por apenas R\$22,90! ',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 18,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                    SizedBox(height: 16,),
                    CustomSearch(),
                 ],
               ),
             ),
            ),
          ),

            ],
          ),
        );

      }
      
      if(maxWidth >= 800){
        return SizedBox(
          height: 300,
          child: Stack(
            children: [
              SizedBox(
                height: 250,  
                width: double.infinity,          
                child:   Image.network('https://www.apexon.com/wp-content/uploads/2022/09/flutter-3-1.png',
        fit: BoxFit.cover,

                ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      width: 300,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: const [
                          Text('Aprenda Flutter 3.0 com o melhor do mercado. ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                           SizedBox(height: 8,),
                          Text('Bora aprender Flutter por apenas R\$22,90! ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                           SizedBox(height: 16,),
                           CustomSearch(),
                        ],
                      ),
                    ),
                  ),
                ),
            ]


          )

        );
      }








      // if (maxWidth >= 800) {
      //   return 
      //         child:   Image.network('https://www.apexon.com/wp-content/uploads/2022/09/flutter-3-1.png',
      //   fit: BoxFit.cover,
      //   ),
             

      
      return Container();
    }));
  }
}

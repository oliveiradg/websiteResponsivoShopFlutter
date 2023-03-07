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
                height: 36,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey[600]!,
                  ),
                ),
                child: Row(
                  children:  [
                    const SizedBox(width: 4,),
                    IconButton(onPressed: (){}, 
                    icon: const  Icon(Icons.search),
                    color: Colors.grey[600],
                    
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'O que você procura?',
                          isCollapsed: true,
                        ),
                      
                      ),
                    ),
                  
                  ],
                  
                ),
              ),
            ),
              if(constraints.maxWidth >= 400) ...[
                const SizedBox(width: 16,),
                  TextButton(onPressed: (){}, child: const  Text('Aprender',
                    style: TextStyle(color: Colors.white,)
                    ),),
              ],
                 
              if(constraints.maxWidth >= 500) ...[
                const SizedBox(width: 8,),
                 TextButton(onPressed: (){}, child: const  Text('Flutter',
                    style: TextStyle(color: Colors.white,)
                    ),),
                
                    
              ],
                  
          ],
        );
      }),
    );
  }
}

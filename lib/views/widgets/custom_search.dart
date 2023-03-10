import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: Colors.blue,
      decoration: InputDecoration(
        border:const  OutlineInputBorder(borderSide: BorderSide(color: Colors.white,
        width: 0,

       
        
      
        )),
        focusedBorder:const  OutlineInputBorder(borderSide: BorderSide(color: Colors.white,
        style: BorderStyle.solid,
        ),
  
        ),
        hintText: 'Pesquisar',
        hintStyle: const TextStyle(color: Colors.white),
        suffixIcon: IconButton(
          onPressed: (){}, 
          icon: const  Icon(Icons.search),
          color: Colors.white,),
      ),
    );
  }
}

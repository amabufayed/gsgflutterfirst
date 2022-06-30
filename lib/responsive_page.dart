

import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Screen"),
      ),
       body:Container(
         height: MediaQuery.of(context).size.height/9,
         width: 300,
         color: Colors.red,
       ),
      
      
      
      
    );


  }
  
  
  
  
}
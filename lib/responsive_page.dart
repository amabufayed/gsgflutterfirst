

import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/LabdScape.dart';
import 'package:gsgflutterfirst/Portait.dart';

class ResponsiveScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait){
      // is portrait
      return Portait();

    }else{
// is landscape
      // is portrait
      return LandScape();

    }



  }
  
  
  
  
}
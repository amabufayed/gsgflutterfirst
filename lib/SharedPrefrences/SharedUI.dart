
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/SPHelper.dart';

class SharedUI extends StatelessWidget{
String isFirstTime(){
 if( SPHelper.reaFromSp()==null){
   SPHelper.writeOnSp("ahmed");
   return 'Hello New User';
 }
 else{
   return 'Hello Old User';

 }

}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text(
            isFirstTime()        ),

      ),
    );
  }

}
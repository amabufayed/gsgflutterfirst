
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/Navigation/router.dart';
import 'package:gsgflutterfirst/SharedPrefrences/SPHelper.dart';
import 'package:gsgflutterfirst/Validator/Form.dart';
import 'package:gsgflutterfirst/Validator/MainForm.dart';

class SplachScreen extends StatelessWidget{

    isFirstTime() async{
      await Future.delayed(Duration(seconds: 3));
      if(SPHelper.reaFromSp('name')==null){

        AppRouter.NavigateWithReplacemtnToWidget(AddForm());
      }
      else{
        AppRouter.NavigateWithReplacemtnToWidget(MainFrom());




    }

  }



  @override
  Widget build(BuildContext context) {
    isFirstTime();
  return Scaffold(
    body: Center(
      child: FlutterLogo(),
    ),
  );


}}
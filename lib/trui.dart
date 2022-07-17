import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class trui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Scaffold(
  appBar: AppBar(title: Text('app_name'.tr()),
    actions: [
      IconButton(onPressed: (){
        if(context.locale.toString()=='en'){
          context.setLocale(Locale('ar'));

        }
        else{
          context.setLocale(Locale('en'));


        }
      }, icon: Icon(Icons.language))
    ],
  ),
body: Text('hello'.tr()),

);
  }
}
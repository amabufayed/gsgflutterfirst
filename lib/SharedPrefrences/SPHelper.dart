
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/Navigation/router.dart';
import 'package:gsgflutterfirst/SharedPrefrences/SPHelper.dart';
import 'package:gsgflutterfirst/Validator/Form.dart';
import 'package:gsgflutterfirst/Validator/MainForm.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPHelper {
  static SharedPreferences? sp;
  static initSP()async{
    sp=await SharedPreferences.getInstance();
  }

  static writeOnSp(String  key,String  value){
    sp!.setString(key, value);
  }
  static String? reaFromSp(String  key){
    String ? string=sp!.getString(key);
    return string;
  }


}
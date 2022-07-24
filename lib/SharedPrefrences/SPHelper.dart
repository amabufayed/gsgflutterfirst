
import 'package:shared_preferences/shared_preferences.dart';

class SPHelper {
  static SharedPreferences? sp;

  static initSP()async{
    sp=await SharedPreferences.getInstance();
  }

  static writeOnSp(String  value){
    sp!.setString('name', value);
  }
  static String? reaFromSp(){
    String ? name=sp!.getString('name');
    return name;
  }

}
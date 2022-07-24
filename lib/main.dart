import 'dart:developer';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/Navigation/PageNotFound.dart';
import 'package:gsgflutterfirst/Navigation/Screen1.dart';
import 'package:gsgflutterfirst/Navigation/Screen2.dart';
import 'package:gsgflutterfirst/Navigation/Screen3.dart';
import 'package:gsgflutterfirst/NewsApp/Screens/main_screen.dart';
import 'package:gsgflutterfirst/Posts/Add_Post.dart';
import 'package:gsgflutterfirst/Posts/PostsScreen.dart';
import 'package:gsgflutterfirst/SPHelper.dart';
import 'package:gsgflutterfirst/SharedPrefrences/SharedUI.dart';
import 'package:gsgflutterfirst/Validator/MainForm.dart';
import 'package:gsgflutterfirst/trui.dart';
import 'package:gsgflutterfirst/trui.dart';
import 'package:gsgflutterfirst/Validator/Form.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SPHelper.initSP();

  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
   child: MyApp(),),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool isDark = false;
  changeTheme(bool value) {
    isDark = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      // theme: isDark ? ThemeData.dark() : ThemeData.light(),
      // home: MainScreen(),
      home: SharedUI(),
      routes: {
        'screen1':(context)=>Screen1(),
        'screen2':(context)=>Screen2('Screen2'),
        'screen3':(context)=>Screen3(),
        'addpost':(context)=>AddPost(),
        'AddForm':(context)=>AddForm(),
        'MainForm':(context)=>MainFrom(),
      },
      onGenerateRoute: (RouteSettings routesetting){
        String? name =routesetting.name;
        dynamic arguments=routesetting.arguments;

        if(name=='screen2'){
          Navigator.push(context ,MaterialPageRoute(builder: (context){
            return Screen2('Screen two');
          }));
        }
        else{
          Navigator.push(context ,MaterialPageRoute(builder: (context){
            return PageNotFound();
          }));
        }
      },
    );
  }
}


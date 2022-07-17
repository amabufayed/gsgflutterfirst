import 'dart:developer';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/Navigation/Screen1.dart';
import 'package:gsgflutterfirst/Navigation/Screen2.dart';
import 'package:gsgflutterfirst/Navigation/Screen3.dart';
import 'package:gsgflutterfirst/NewsApp/Screens/main_screen.dart';
import 'package:gsgflutterfirst/trui.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
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
      home: Screen1(),
      routes: {
        'screen1':(context)=>Screen1(),
        'screen2':(context)=>Screen2(),
        'screen3':(context)=>Screen3(),
      },
    );
  }
}
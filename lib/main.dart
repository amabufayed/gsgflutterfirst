import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gsgflutterfirst/Portait.dart';
import 'package:gsgflutterfirst/ScreenTest.dart';
import 'package:gsgflutterfirst/facebook_pageone.dart';
import 'package:gsgflutterfirst/facebook_pagetwo.dart';
import 'package:gsgflutterfirst/instagram_ui.dart';
import 'package:gsgflutterfirst/responsive_page.dart';
// Color background = Color(0xffEB4747);
// void main() {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       darkTheme: ThemeData.dark(),
//       themeMode: ThemeMode.system,
//     //  home:FacebookPostUI()));
//        home:(MyApp())));
//
//
// }

void main() {
  runApp(
    MyApp(),
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
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: ScreenTest(changeTheme,isDark),
    );
  }
}




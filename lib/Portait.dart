import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/main.dart';

class Portait extends StatelessWidget{
  String title ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Screen"),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(currentAccountPicture:CircleAvatar(child: Text("A"),),accountName: Text("Ahmed"), accountEmail: Text("ahmedmahtech@gmail.com")),
            ListTile(

              leading:Icon(Icons.home),
              trailing:Icon(Icons.arrow_forward_ios),
              subtitle:Text("Go to home"),
              title:Text(changeaTitle("Home")),
            ),
            ListTile(

              leading:Icon(Icons.favorite),
              trailing:Icon(Icons.arrow_forward_ios),
              subtitle:Text("Go to favourite"),
              title:Text(changeaTitle("Favourite")),
            ),
            ListTile(

              leading:Icon(Icons.person),
              trailing:Icon(Icons.arrow_forward_ios),
              subtitle:Text("Go to profile"),
              title:Text(changeaTitle("Profile")),
            ),

          ],
        ),

      ),

      body:Container(
        height: MediaQuery.of(context).size.height/9,
        width: 300,
          child: Text(setContent(title)),
      ),





    );
  }
  String changeaTitle(String title){
    return  this.title=title;



  }

  String setContent(String title) {
    if(title=='Profile')
      return " Home Page";
   else if(title=='Favourite')
      return " Favourite Page";
   else
      return " Home Page";

  }

}


import 'package:flutter/material.dart';

class ResponsiveScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(currentAccountPicture:CircleAvatar(child: Text("A"),),accountName: Text("Ahmed"), accountEmail: Text("ahmedmahtech@gmail.com")),
            ListTile(

              leading:Icon(Icons.home),
              trailing:Icon(Icons.arrow_forward_ios),
              subtitle:Text("Go to home"),
              title:Text("Home"),
            ),
            ListTile(

              leading:Icon(Icons.favorite),
              trailing:Icon(Icons.arrow_forward_ios),
              subtitle:Text("Go to favourite"),
              title:Text("Favourite"),
            ),
            ListTile(

              leading:Icon(Icons.person),
              trailing:Icon(Icons.arrow_forward_ios),
              subtitle:Text("Go to profile"),
              title:Text("Profile"),
            ),

          ],
        ),

      ),
      appBar: AppBar(
        title: Text("Responsive Screen"),
      ),
       body:Container(
         height: MediaQuery.of(context).size.height/9,
         width: 300,
         color: Colors.red,
       ),
      
      
      
      
    );


  }
  
  
  
  
}
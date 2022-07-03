import 'package:flutter/material.dart';

class LandScape extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Screen"),
      ),

      body: Container(

        child: Row(

          children: [
            Container(
              width:MediaQuery.of(context).size.width/2,
              color: Colors.greenAccent,

              child: Column(

                children: [
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
          ],
        ),
      ),









    );
  }

}
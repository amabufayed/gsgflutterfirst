import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        if(Navigator.canPop(context)){
          return Future.value(true);
        }
        else{
          return  Future.value(false);

        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Screen3"),
        ),
        body: Column(
          children: [
            Container(
              child: ElevatedButton(child: Text("Go to Screen2"),
                onPressed:(){
                  Navigator.pushReplacementNamed(context, 'screen2');


                } ,

              ),
            ),  Container(
              child: ElevatedButton(child: Text("Go to Screen1"),
                onPressed:(){
                  Navigator.pop(context,'Welcome back from screen1');


                } ,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
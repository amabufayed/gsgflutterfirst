import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget{

 String? title;
  Screen2(this.title);
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
          title: Text("$title"),
        ),
        body: Column(
          children: [
            Container(
              child: ElevatedButton(child: Text("Go to Screen3"),
                onPressed:(){
                  Navigator.pushReplacementNamed(context, 'screen3');


                } ,

              ),
            ),  Container(
              child: ElevatedButton(child: Text("Go to Screen1"),
                onPressed:(){
                  Navigator.pop(context,'Welcome back from screen2');


                } ,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
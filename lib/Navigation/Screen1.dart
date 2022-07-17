import 'package:flutter/material.dart';
import 'Screen2.dart';
class Screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        if(Navigator.canPop(context)){
          return Future.value(true);
        }
        else{
            print('this is the last screen , you can not pop');
          return  Future.value(false);

        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Screen1"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                child: ElevatedButton(child: Text("Go to screen2"),
                  onPressed:() async{
                    dynamic r= await Navigator.of(context).pushNamed('screen2');
                    print("the message from other screen is: $r");

                  } ,

                ),
              ),  Container(
                child: ElevatedButton(child: Text("Exit"),
                  onPressed:() {
                    Navigator.maybePop(context);

                  } ,

                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
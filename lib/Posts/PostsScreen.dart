
import 'package:flutter/material.dart';

class PostsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Posts "),
      ),
      body: ListView(),
      floatingActionButton: FloatingActionButton(onPressed: () async{
        dynamic r= await Navigator.of(context).pushNamed('addpost');

      } ,child: Icon(Icons.add),),
    );

  }

}
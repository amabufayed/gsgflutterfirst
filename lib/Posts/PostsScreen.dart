
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/Posts/PostWed.dart';
import 'package:gsgflutterfirst/dummy_data.dart';
import 'package:gsgflutterfirst/post.dart';
import 'package:gsgflutterfirst/postResponse.dart';

class PostsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
List<PostResponse> postlist=posts;
    return Scaffold(
      appBar: AppBar(title: Text("Posts "),
      ),
      body: ListView.builder(
          itemCount:3,
          itemBuilder: (context, index) {
            return PostWed(postlist.first);

          }),
      floatingActionButton: FloatingActionButton(onPressed: () async{
        dynamic r= await Navigator.of(context).pushNamed('addpost');

      } ,child: Icon(Icons.add),),
    );

  }

}
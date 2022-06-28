import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'package:gsgflutterfirst/PostWedigetInsta.dart';
class instagramui extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:ListView.builder(
        itemCount: posts.length,
        itemBuilder: ( context,  index) {
          return PostWidgetInsta(posts[index].user!, posts[index].post!);
        }
      ),

    );
  }
}

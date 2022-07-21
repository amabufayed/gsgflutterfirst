import 'dart:io';

class Post {

  String? content;

  String? image;


  String? noLikes;
  String? time;
  String? noComments;


  Post.fromJson(Map<String, dynamic> data) {
    content = data[ 'content' ];
    image = data['image'];
    noLikes = data['noLikes'];
    noComments = data['noComments'];
    time = data['time'];

      }
}
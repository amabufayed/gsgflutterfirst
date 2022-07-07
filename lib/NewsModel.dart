import 'package:gsgflutterfirst/NewsModel.dart';

class NewsModel{

  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String ? content ;
  String? imgUrl;
  bool isLike=false;

NewsModel.fromJson(Map<String, dynamic> map){

  source=Source.fromJson(map['source']) ;
   author=map['author'];
   title=map['title'];
   description=map['description'];
  url=map['url'];
   content=map['content'] ;
   imgUrl=map['urlToImage'] ;
   isLike=false;

}
}
class Source{

String? id;
String ? name;
Source.fromJson(Map<String, dynamic>map){

  id=map['id'];
  name=map['name'];

}

}
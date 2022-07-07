import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/NewsApp/Wedigets/news_widget.dart';
import 'package:gsgflutterfirst/newsResponse.dart';
class AllNewsScreen extends StatelessWidget {
  Function function;
  AllNewsScreen(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: newsModels.length,
        itemBuilder: (context, index) {
          return NewsWidget(newsModels[index],function);
        });
  }
}
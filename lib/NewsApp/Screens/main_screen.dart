import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/NewsApp/Screens/all_news_screen.dart';
import 'package:gsgflutterfirst/NewsApp/Screens/favourite_screen.dart';
import 'package:gsgflutterfirst/NewsModel.dart';
import 'package:gsgflutterfirst/newsResponse.dart';
import 'package:gsgflutterfirst/NewsApp/Screens/contact.dart';


class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  likeNews(NewsModel newsModel) {
    int index = newsModels.indexOf(newsModel);
    newsModels[index].isLike = !newsModels[index].isLike;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News App'),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'ALL',
            ),
            Tab(
              text: 'FAVOURITE',
            ),
            Tab(
              text: 'Contact',
            )
          ]),
        ),
        body: TabBarView(children: [AllNewsScreen(likeNews), FavouriteScreen(likeNews), Contact()]),
      ),
    );
  }
}
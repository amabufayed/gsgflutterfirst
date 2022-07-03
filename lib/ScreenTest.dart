import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/ScreenTest.dart';
class ScreenTest extends StatefulWidget {

  Function function;
  bool isDark;
  ScreenTest(this.function, this.isDark);
  @override
  State<StatefulWidget> createState() {

    return ScreenTestState();
  }
}
class ScreenTestState extends State<ScreenTest>{
  String content = 'Home Page';

  String title ="";
  int index=0;

  bool isDark = false;


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child:
        Scaffold(


      appBar: AppBar(
        title: Text("Responsive Screen"),
        actions: [
          Switch(
              value: widget.isDark,
              onChanged: (value) {
                widget.function(value);
              }),

        ],
        bottom: TabBar(
          tabs: [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.person),
          ],
        ),


      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(currentAccountPicture:CircleAvatar(child: Text("A"),),accountName: Text("Ahmed"), accountEmail: Text("ahmedmahtech@gmail.com")),
            ListTile(


              leading:Icon(Icons.home),
              trailing:Icon(Icons.arrow_forward_ios),

              subtitle:Text("Go to home"),
              title:Text("home"),
              onTap: () {
                setState(() {
                  setContent(0);
                });
              },
            ),
            ListTile(

              leading:Icon(Icons.favorite),
              trailing:Icon(Icons.arrow_forward_ios),
              subtitle:Text("Go to favourite"),
              title:Text("favorite"),
              onTap:

                  () {
                setState(() {
                  setContent(1);
                });
              },

            ),
            ListTile(

              leading:Icon(Icons.person),
              trailing:Icon(Icons.arrow_forward_ios),
              subtitle:Text("Go to profile"),
              title:Text("profile"),
              onTap: () {
                setState(() {
                  setContent(2);
                });
              },
            ),

          ],
        ),

      ),

      body:TabBarView(
        children: [
          Text("Home Page"),
          Text("Favourite Page"),
          Text("Profile Page"),

        ],
      ),


      // Container(
      //
      //   height: MediaQuery.of(context).size.height/9,
      //   width: 300,
      //   child: Center(child: Text(content)),
      // ),
      bottomNavigationBar: BottomNavigationBar(

          onTap: (i) {

            index = i;
            if (i == 0) {

              content = 'Home';
            } else if (i == 1) {
              content = 'Favourite';
            } else {
              content = 'Profile';
            }
            setState(() {});
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Favourite', icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
                label: 'Profile', icon: Icon(Icons.perm_identity))
          ]),

    ),);





  }


  void setContent(int index) {
    setState(() {
      if(index==0)
        content= " Home Page";
      else if(index==1)
        content= " Favourite Page";
      else
        content= " Profile Page";
      // background= (background==Color(0xffEB4747)?background=Color(0xffFBB454):background=Color(0xffEB4747));
    });


  }



}

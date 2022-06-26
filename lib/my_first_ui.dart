import 'package:flutter/material.dart';

class MyFirstUI extends StatelessWidget {
  String imageurl1 =
      "https://images.unsplash.com/photo-1655880397426-405271e82b63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";
  String imageurl2 =
      "https://images.unsplash.com/photo-1655438818591-5094f7fed3c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      // body: Center(child:Image.asset('assets/images/ice.jpg') ,  ),
      body: Column(

        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Container(
                          color: Colors.blueGrey,
                          child: Column(

                            children: [
                              Image.network(
                                imageurl1,
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "ice",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.blueGrey,
                          child: Column(
                            children: [
                              Image.network(
                                imageurl2,
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "Street",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {},
            //   child: const Icon(Icons.open_in_browser),
            // ),
            // bottomNavigationBar: BottomNavigationBar(items: [
            //   BottomNavigationBarItem(icon:  const Icon(Icons.add),label: "Add", ),
            //   BottomNavigationBarItem(icon:  const Icon(Icons.delete),label: "Delete"),
            //   BottomNavigationBarItem(icon:  const Icon(Icons.edit),label: "Edit")
            //
            // ]
            //
            //   ,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Ahmed Abufayed")],
          ),
        ],
      ),
    );
  }
}

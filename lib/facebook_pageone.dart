// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class FacebookUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body:SingleChildScrollView(

        child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
             child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
             Padding(
             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[

    Row(
    children: <Widget>[
      SizedBox(
        width:30,
      ),
    Container(
    width: 30,
    height: 30,

    decoration: BoxDecoration(

    image: DecorationImage(

    image: AssetImage("assets/icons/camera.png"), fit: BoxFit.contain, ),
   ),
    ),
      SizedBox(
        width:20,
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(10,0,0,0),

      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,


        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 0.5, color: Colors.grey),
            borderRadius: BorderRadius.circular(50),

            color: Color(0xFFE0E0E0),
          ),
          
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 300.0,
              child:Row(
                children: [
                  Icon( Icons.search, ),
                  Text(" Search", style:TextStyle(color:Color.fromRGBO(54, 69, 79, 0.5) ) ,)





                ],
              ),


            ),
          ),
        ),
      ),
      ),
      SizedBox(
        width:30,
      ),
      Container(
        width: 30,
        height: 30,

        decoration: BoxDecoration(

          image: DecorationImage(

            image: AssetImage("assets/icons/messenger.png"), fit: BoxFit.contain, ),
        ),
      ),


    ],
        ),
      Divider(
        height:30,
        color: Colors.white,

      ),
      Row(


        children:[ Positioned(
          top: 50,
          child: Text(
            "Stories",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
          SizedBox(
            width: 300,
          ),

          Positioned(
          top: 50,
          child: Text(
            " See Archive >",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,

            ),
          ),
        ),


        ]
      )]
    )
               ,
             ),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/m.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 5,
                                top: 5,
                                child:Container(
                                  margin: EdgeInsets.all(5),
                                  decoration:
                                  BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    ),
                                    onPressed:() {},
                                  ),
                                )



                            ),
                            Positioned(
                                bottom: 10,
                                left: 10,
                                child: Text("Add to story",

                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                            ),
                            Positioned(
                                left: 5,
                                top: 5,
                                child:Container(
                                  margin: EdgeInsets.all(5),
                                  decoration:
                                  BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    ),
                                    onPressed:() {},
                                  ),
                                )



                            ),


                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/ice.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 5,
                                top: 5,
                                child:Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:  Border.all(
                                          color: Colors.blueAccent,
                                          width: 3,
                                        )
                                        ,
                                      ),
                                      padding: EdgeInsets.only(right: 4, left: 4),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset(
                                          "assets/images/m.jpg",
                                          fit: BoxFit.cover,
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ),
                                    SizedBox()
                                    // statusIndicator,
                                  ],
                                )

                            ),
                            Positioned(
                                bottom: 10,
                                left: 10,
                                child: Text(
                                  "Ahmed Abufayed",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                            )
                          ],
                        ),
                      ), Container(
                        width: 150,
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/u.jpg"),
                            fit: BoxFit.cover,

                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 5,
                                top: 5,
                                child:Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:  Border.all(
                                          color: Colors.blueAccent,
                                          width: 3,
                                        )
                                        ,
                                      ),
                                      padding: EdgeInsets.only(right: 4, left: 4),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset(
                                          "assets/images/u.jpg",
                                          fit: BoxFit.cover,
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ),
                                    SizedBox()
                                    // statusIndicator,
                                  ],
                                )

                            ),
                            Positioned(
                                bottom: 10,
                                left: 10,
                                child: Text(
                                  " Abufayed",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 5,
                          top: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/u.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 5,
                                top: 5,
                                child:Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:  Border.all(
                                          color: Colors.blueAccent,
                                          width: 3,
                                        )
                                        ,
                                      ),
                                      padding: EdgeInsets.only(right: 4, left: 4),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(100),
                                        child: Image.asset(
                                          "assets/images/u.jpg",
                                          fit: BoxFit.cover,
                                          width: 50,
                                          height: 50,
                                        ),
                                      ),
                                    ),
                                    SizedBox()
                                    // statusIndicator,
                                  ],
                                )

                            ),
                            Positioned(
                                bottom: 10,
                                left: 10,
                                child: Text(
                                  " Abufayed",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))
                          ],
                        ),
                      )


                    ],
                  ),
                ),
                Divider(
                  thickness: 10,
                  color: Colors.white,
                ),

                Container(
                    child: Column(
                      children: [
                        ListTile(
                          leading:Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:Border(),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/images/u.jpg",
                                    fit: BoxFit.cover,
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ),

                              SizedBox()
                              // statusIndicator,
                            ],
                          ),


                          title: Row(
                            children: [
                              Text(
                                "Ahmned Abufayed ",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                              ),
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 10,
                                ),
                              ),
                              Text(
                                "  updated his profile image",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),

                              ),
                              SizedBox(width: 10),

                            ],
                          ),
                          subtitle: Row(
                            children: [
                              Text("3 minutes ago"),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.public,
                                color: Colors.grey[700],
                                size: 15,
                              )
                            ],
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),



                        Container(
                          padding: EdgeInsets.only(left:10,top: 5,right:10, bottom: 5,),

                          child: ClipRRect(

                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset("assets/images/u.jpg",
                          ),

                        ),

                        ) ,
                        Container(
                          height: 50,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      child: Icon(
                                        Icons.thumb_up,
                                        color: Colors.white,
                                        size: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      child:  Container(
                                        width: 30,
                                        height: 30,

                                        decoration: BoxDecoration(

                                          image: DecorationImage(

                                            image: AssetImage("assets/icons/love.png"), fit: BoxFit.contain, ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1,
                                    ),
                                    Text(
                                      "15K",
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "15K",
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Comments",
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),

                                    SizedBox(
                                      width: 10,
                                    ),


                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),




                        Divider(
                          thickness: 1,
                          color: Colors.grey[300],
                        ),
                        Container(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FlatButton.icon(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.thumb_up_alt_outlined,
                                    color: Colors.grey,
                                  ),
                                  label: Text("Like")),
                              SizedBox(


                                  width: 20,
                              ),
                              FlatButton.icon(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.message_outlined,
                                    color: Colors.grey,
                                  ),
                                  label: Text("comment")),

                            ],
                          ),
                        )


                      ],
                    ),),

/////////
                ListTile(
                  leading:Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:Border(),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/images/u.jpg",
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),

                      SizedBox()
                      // statusIndicator,
                    ],
                  ),


                  title: Row(
                    children: [
                      Text(
                        "Ahmed",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                      ),

                      Text(
                        " had a flutter course ",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),

                      ),

                      Text(
                        "at ",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),

                      ),
                      Text(
                        "Gaza Sky Geeks",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                      ),
                      SizedBox(width: 10),

                    ],
                  ),
                  subtitle: Row(
                    children: [
                      Text("1 month ago"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.public,
                        color: Colors.grey[700],
                        size: 15,
                      )
                    ],
                  ),

                ),












              ],

             )
          ,
        ),



    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    ),    );
  }
}


import 'package:flutter/material.dart';

class FacebookPostUI extends StatelessWidget {
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


                          children:[

                            Positioned(
                              top: 50,
                              child: Text(
                                " < feed ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ),


                          ]
                      )]
                )
                ,
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
                            "Ahmned Abufayed",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                          ),

                          Text(
                            " Added 13 Photos to ",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),

                          ),  Text(
                            "Creativity",
                            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

                          ),

                        ],
                      ),



                      subtitle: Row(
                        children: [
                          Text("32 minutes ago"),
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
                    Row(

                      children: [
                        SizedBox(width: 10),

                        Text(
                            "  There are some photos ",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),

                        ),


                        SizedBox(width: 20,height: 30,),

                      ],
                    ),



                    Container(
                      padding: EdgeInsets.only(left:10,top: 5,right:10, bottom: 5,),

                      child: ClipRRect(

                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assets/images/u.jpg",
                          height: 200,
                          width: 500,
                          fit: BoxFit.fitWidth,
                        ),

                      ),

                    ) ,
                    Container(
                      padding: EdgeInsets.only(left:10,top: 5,right:10, bottom: 5,),

                      child: ClipRRect(

                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assets/images/m.jpg",
                          height: 200,
                          width: 500,
                          fit: BoxFit.fitWidth,

                        ),

                      ),

                    ) ,
                    Container(
                      padding: EdgeInsets.only(left:10,top: 5,right:10, bottom: 5,),

                      child: ClipRRect(

                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assets/images/ice.jpg",
                          height: 200,
                          width: 500,
                          fit: BoxFit.fitWidth,

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
                      color: Colors.white,
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        children: [
                          SizedBox(


                            width:20,
                          ),
                          FlatButton.icon(
                              onPressed: (){},
                              icon: Icon(
                                Icons.thumb_up_alt_outlined,
                                color: Colors.grey,
                              ),
                              label: Text("")),



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
              width: 330.0,
              child:Row(
                children: [
                  Text(" Add Comment ", style:TextStyle(color:Color.fromRGBO(54, 69, 79, 0.5) ) ,),
                  SizedBox(


                    width:170,
                  ),
                  Icon( Icons.gif_box_outlined, ),
                  Icon( Icons.emoji_emotions, ),





                ],
              ),


            ),
          ),
        ),
      ),
    ),],
                      ),
                    ),


                  ],
                ),),

            ],

          )
          ,
        ),



      ),

    );
  }
}

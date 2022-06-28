
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/PostWediget.dart';
import 'package:gsgflutterfirst/user.dart';
import 'package:gsgflutterfirst/post.dart';

class PostWidget extends StatelessWidget {
  User user;
  Post post;

  PostWidget(this.user,this.post);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
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
                    child: Image.network(
                      user.image??'',
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
                  user.name??'',
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
              child: Image.network(post.image??" ",
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
                       post.noLikes??" ",
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
                        post.noComments??" ",
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
                // ignore: deprecated_member_use
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
      ),
    );
  }




}
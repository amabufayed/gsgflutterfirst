
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/PostWediget.dart';
import 'package:gsgflutterfirst/user.dart';
import 'package:gsgflutterfirst/post.dart';

class PostWidgetInsta extends StatelessWidget {
  User user;
  Post post;

  PostWidgetInsta(this.user,this.post);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return  Container(

     padding: const EdgeInsets.only(bottom: 10),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Row(
                 children: <Widget>[
                   Container(
                     width: 40,
                     height: 40,
                     child: ClipRRect(

                       borderRadius: BorderRadius.circular(30),
                       child: Image.network(user.image??" ",
                       ),

                     ),

                   ),
                   SizedBox(
                     width: 5,
                   ),
                   Text(
                     user.name??'',
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: 15,
                         fontWeight: FontWeight.w700),
                   ),

                   Container(
                     width: 15,
                     height: 15,
                     child: Image.network(
                       "assets/icons/verify.png",
                       width: 27,
                     ),
                   ),
                 ],
               ),
               // Icon(LineIcons.ellipsis_h,color: white,)
             ],
           ),
         ),
         Container(

             child:FittedBox(
         child: Image.network(post.image??""),
         fit: BoxFit.contain,
         )






             ),

         SizedBox(
           height: 10,
         ),
         Padding(
           padding: const EdgeInsets.only(left: 15, right: 15, top: 3),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Row(
                 children: <Widget>[
                   Image.asset(
                     "assets/icons/heart.png",
                     width: 27,
                   ),
                   SizedBox(
                     width: 10,
                   ),
                   Image.asset(
                     "assets/icons/chat.png",
                     width: 27,
                   ),
                   SizedBox(
                     width: 20,
                   ),
                   Image.asset(
                     "assets/icons/send.png",
                     width: 27,
                   ),
                 ],
               ),
               Image.asset(
                 "assets/icons/save.png",
                 width: 27,
               ),
             ],
           ),
         ),
         SizedBox(
           height: 12,
         ),
         Padding(
           padding: const EdgeInsets.only(left: 15, right: 15),
           child: RichText(
               text: TextSpan(children: [
                 TextSpan(
                     text: "Liked by ",
                     style:
                     TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                 TextSpan(
                     text: post.noLikes??"",
                     style:
                     TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),

               ])),
         ),
         SizedBox(
           height: 12,
         ),

         SizedBox(
           height: 12,
         ),
         Padding(
           padding: EdgeInsets.only(left: 15, right: 15),
           child: Text(
             "View comments",
             style: TextStyle(
                 color: Color.fromRGBO(0, 0, 0, 0.5),
                 fontSize: 15,
                 fontWeight: FontWeight.w500),
           ),
         ),
         SizedBox(
           height: 12,
         ),
         Padding(
           padding: EdgeInsets.only(left: 15, right: 15),
           child: Text(
             post.time??" ",
             style: TextStyle(
                 color: Color.fromRGBO(0, 0, 0, 0.8),
                 fontSize: 15,
                 fontWeight: FontWeight.w500),
           ),
         ),
         SizedBox(
           height: 12,
         ),
         Divider(
           height: 20,
           thickness: 0.2,
           indent: 0,
           endIndent:0,
           color: Color.fromRGBO(0, 0, 0, 0.3), ),
         Padding(
             padding: EdgeInsets.only(left: 15, right: 15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Row(
                   children: <Widget>[
                     Container(
                       width: 30,
                       height: 30,
                       child: Image.asset(
                         "assets/icons/smile.png",
                         width: 27,
                       ),
                     ),

                     SizedBox(
                       width: 15,
                     ),

                     Text(
                       "Add a comment...",
                       style: TextStyle(
                           color: Color.fromRGBO(0, 0, 0, 0.5),
                           fontSize: 15,
                           fontWeight: FontWeight.w500),
                     ),
                   ],
                 ),
                 Row(
                   children: <Widget>[
                     Text(
                       "Post️",
                       style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w500,
                           color: Color.fromRGBO(
                               96, 89, 224, 0.5019607843137255)),
                     ),
                   ],
                 ),

               ],
             )),
         Divider(
           height: 20,
           thickness: 0.2,
           indent: 0,
           endIndent:0,
           color: Color.fromRGBO(0, 0, 0, 0.3), ),
       ],
     ),

   );

  }




}
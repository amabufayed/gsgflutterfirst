


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/dummy_data.dart';
import 'package:gsgflutterfirst/post.dart';
import 'package:gsgflutterfirst/postResponse.dart';
import 'package:image_picker/image_picker.dart';

class AddPost extends StatefulWidget{
  @override
  State<AddPost> createState() => _AddPostState();

}

class _AddPostState extends State<AddPost> {
  File? selectedImage;
  TextEditingController postController = TextEditingController();
  String post = '';

  getImage() async{
   XFile? xfile= await ImagePicker().pickImage(source: ImageSource.gallery);
   selectedImage=File(xfile!.path);
   setState((){});
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text("Add Post"),
  ),
  body:SingleChildScrollView(
  child:Column(
    children: [
      InkWell(
    child: Container(
      height: 300,
        width: 500,
        decoration: const BoxDecoration(

          color: Colors.grey
        ),
          child: selectedImage==null?Icon(Icons.add):Image.file(selectedImage!,fit: BoxFit.fitWidth,)

      ),

      onTap: ()=>getImage(),
      ),
      SizedBox(height: 10,),
      Padding(padding:  EdgeInsets.all(10),
     child: TextFormField(
       controller: postController,
       decoration: const InputDecoration(
         border: OutlineInputBorder(),
         labelText: 'Post',
       ),
       onChanged: (text) {
        setState(() {
         post = text;
    //you can access nameController in its scope to get
    // the value of text entered as shown below
    //fullName = nameController.text;
    });  },
       validator: (text) {
         if (text == null || text.isEmpty) {
           return 'Please enter some text';
         }  else if (text.length<8) {
           return 'Please enter larger text';
         }
         return null;
       },
     ),



     //    TextField(
     //   controller: postController,
     //   decoration: const InputDecoration(
     //     border: OutlineInputBorder(),
     //     labelText: 'Post',
     //   ),
     //   onChanged: (text) {
     //     setState(() {
     //       post = text;
     //       //you can access nameController in its scope to get
     //       // the value of text entered as shown below
     //       //fullName = nameController.text;
     //     });
     //   },
     // ),
      ),
ElevatedButton(onPressed: (){
  if(selectedImage!=null ){
    PostResponse post= PostResponse(selectedImage);
    posts.add(post);
    setState(() {});
    Navigator.pop(context);
  }

}, child: Text("Submit"))
    ],
  ),
),);

  }
}
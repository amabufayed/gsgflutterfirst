// ignore_for_file: deprecated_member_use
import 'package:share_plus/share_plus.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/NewsApp/Wedigets/news_widget.dart';
import 'package:gsgflutterfirst/newsResponse.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
Future<void> makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}

Future<void> makeSms(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'sms',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}
Future<void> sendEmail(String email) async {
  final Uri launchUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  await launchUrl(launchUri);
}
launchWhatsApp( String messgae) async {
  final  String whatsApp =
  "whatsapp://send?phone=972599976142&text=${Uri.encodeFull('message')}";
  await launchUrl(Uri.parse(whatsApp));

}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            IconButton(onPressed: (){
              makePhoneCall("0595305026");
            }, icon: Icon(Icons.phone)),
            IconButton(onPressed: (){
              launchWhatsApp('hello');
            }, icon: Icon(FontAwesomeIcons.whatsapp)),
            IconButton(onPressed: (){

              sendEmail("ahmedmahtech@gmail.com");

            }, icon: Icon(Icons.email)),
            IconButton(onPressed: (){
              makeSms("0595305026");

            }, icon: Icon(Icons.sms)),
            IconButton(onPressed: () async {
              String fbProtocolUrl;

                fbProtocolUrl = 'fb://page/page_id';


              String fallbackUrl = 'https://www.facebook.com/ahmedmahabufayed';

              try {
                bool launched = await launch(fbProtocolUrl, forceSafariVC: false);

                if (!launched) {
                  await launch(fallbackUrl, forceSafariVC: false);
                }
              } catch (e) {
                await launch(fallbackUrl, forceSafariVC: false);
              }
            }, icon: Icon(FontAwesomeIcons.facebook)),




          ],

        ),
      ),
    );

  }
}
// واتس
//ايميل
// تلفون
//رسالة
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/Validator/MainForm.dart';

class MainFrom extends StatelessWidget {
  String ?name;
  String ?email;
  String ?mobile;
  String ?country;
  String ?city;
  MainFrom({@required this.name,@required this.email,@required this.mobile,@required this.country,@required this.city});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Information"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const Text("Name: ",
                  style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                ), Text(name!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),),

              ],
            ),      Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const Text("Email: ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),), Text(email!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),),

              ],
            ),      Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                const Text("Mobile Number: ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),), Text(mobile!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),),
              ],
            ),      Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                const Text("Address: ",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),), Text(country!+","+city!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

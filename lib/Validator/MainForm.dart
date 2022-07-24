import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/SharedPrefrences/SPHelper.dart';
import 'package:gsgflutterfirst/Validator/MainForm.dart';

class MainFrom extends StatelessWidget {

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
                ), Text(SPHelper.reaFromSp('name')!,
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
                  ),), Text(SPHelper.reaFromSp('email')!,
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
                  ),), Text(SPHelper.reaFromSp('mobile')!,
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
                  ),), Text(SPHelper.reaFromSp('country')!+" , "+SPHelper.reaFromSp('city')!,
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

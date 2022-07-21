
import 'package:flutter/material.dart';

class AddForm extends StatelessWidget{


    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Form',
        debugShowCheckedModeBanner: false,

        home:  MyForm(),
      );
    }}

    class MyForm extends StatefulWidget {
    @override
    State<MyForm> createState() => _MyFormPageState();
    }

    class _MyFormPageState extends State<MyForm> {
        String? CityselectedValue = null;
        String? CountryselectedValue = null;
        List<DropdownMenuItem<String>> ?outcities =null;
        List<DropdownMenuItem<String>> countries = [
            DropdownMenuItem(child: Text("Palestine"),value: "Palestine"),
            DropdownMenuItem(child: Text("Eygpt"),value: "Eygpt"),
            DropdownMenuItem(child: Text("Lebanon"),value: "Lebanon")
        ];
        List<DropdownMenuItem<String>> Palestine = [
            DropdownMenuItem(child: Text("Gaza"),value: "Gaza"),
            DropdownMenuItem(child: Text("Jenin"),value: "Jenin"),
            DropdownMenuItem(child: Text("Jabalia"),value: "Jabalia")
        ];
        List<DropdownMenuItem<String>> Lebanon = [
            DropdownMenuItem(child: Text("Beirut"),value: "Beirut"),
            DropdownMenuItem(child: Text("Trablus"),value: "Trablus"),
        ];
        List<DropdownMenuItem<String>> Eygpt = [
            DropdownMenuItem(child: Text("Cairo"),value: "Cairo"),
            DropdownMenuItem(child: Text("Alexandria"),value: "Alexandria"),
        ];
        bool isChecked = false;

        TextEditingController textEditingController = TextEditingController();
    String str='Full Name';
    @override
    Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: Text("Personal information"),
    ),
    body:SingleChildScrollView(
    child:Column(

    children: <Widget>[
    Container(
    margin: EdgeInsets.all(20),
    child: TextField(

    controller: textEditingController,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius:BorderRadius.circular(10),
    ),

    enabledBorder:OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue,width: 2),
    borderRadius: BorderRadius.circular(10)
    ),
    labelText:str ,
    labelStyle: TextStyle(fontSize: 14),
    hintText: 'Enter your full name',
    hintStyle: TextStyle(fontSize: 12),
    icon: Icon(Icons.person),


    ),
    keyboardType: TextInputType.text,

    ),
    ),
    Container(
    margin: EdgeInsets.all(20),
    child: TextField(
    decoration: InputDecoration(
    labelText: 'Email ',
    labelStyle: TextStyle(fontSize: 14),
    hintText: 'Enter your email',
    hintStyle: TextStyle(fontSize: 12),
        border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(10),
        ),

        enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue,width: 2),
            borderRadius: BorderRadius.circular(10)
        ),
    icon: Icon(Icons.email)
    ),
    keyboardType: TextInputType.emailAddress,

    ),
    ),
    Container(
    margin: EdgeInsets.all(20),
    child: TextField(
    decoration: InputDecoration(
        prefixText: "970",
    labelText: 'Phone',
    labelStyle: TextStyle(fontSize: 14),

        border: OutlineInputBorder(
            borderRadius:BorderRadius.circular(10),
        ),

        enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue,width: 2),
            borderRadius: BorderRadius.circular(10)
        ),
    icon: Icon(Icons.phone)

    ),
    keyboardType: TextInputType.phone,

    ),
    ),
        Container(
            margin: EdgeInsets.all(20),
            child:DropdownButtonFormField (
                decoration: InputDecoration(

                    icon: Icon(Icons.place),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white,

                ),

                validator: (value) => value == null ? "Select a city" : null,
                dropdownColor: Colors.white,
                value: CountryselectedValue,
                onChanged: (String? newValue) {
                    setState(() {
                        CountryselectedValue = newValue!;
                        if(CountryselectedValue=='Palestine'){
                            outcities=Palestine;
                        }
                        else if(CountryselectedValue=='Lebanon'){
                            outcities=Lebanon;

                        }
                        else{

                            outcities=Eygpt;

                        }
                    });
                },
                items: countries),
        ),
        Container(
            margin: EdgeInsets.all(20),
            child:DropdownButtonFormField (
                decoration: InputDecoration(

                    icon: Icon(Icons.location_city),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(20),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    fillColor: Colors.white,

                ),

                validator: (value) => value == null ? "Select a city" : null,
                dropdownColor: Colors.white,
                value: CityselectedValue,
                onChanged: (String? newVal) {
                    setState(() {
                        CityselectedValue = newVal!;
                    });
                },
                items: outcities,

        ),),
        Container(
            margin: EdgeInsets.all(10),
            child: Center(
              child: Row(
                  children: [
                      Text("Accept Conditiona"),
                      Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                              setState(() {
                                  isChecked = value!;
                              });
                          },
                      ),                ],
              ),
            ),

        ),
    ElevatedButton(onPressed: ()=>setState((){
    str=textEditingController.text;
    }),child: Text("Register"),)
    ],
    ),
    ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
    }
    }

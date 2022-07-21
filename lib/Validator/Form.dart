
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:gsgflutterfirst/Validator/MainForm.dart';

class AddForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      debugShowCheckedModeBanner: false,
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  State<MyForm> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  String? CityselectedValue = null;
  String? CountryselectedValue = null;
  List<DropdownMenuItem<String>>? outcities = null;
  List<DropdownMenuItem<String>> countries = [
    DropdownMenuItem(child: Text("Palestine"), value: "Palestine"),
    DropdownMenuItem(child: Text("Eygpt"), value: "Eygpt"),
    DropdownMenuItem(child: Text("Lebanon"), value: "Lebanon")
  ];
  List<DropdownMenuItem<String>> Palestine = [
    DropdownMenuItem(child: Text("Gaza"), value: "Gaza"),
    DropdownMenuItem(child: Text("Jenin"), value: "Jenin"),
    DropdownMenuItem(child: Text("Jabalia"), value: "Jabalia")
  ];
  List<DropdownMenuItem<String>> Lebanon = [
    DropdownMenuItem(child: Text("Beirut"), value: "Beirut"),
    DropdownMenuItem(child: Text("Trablus"), value: "Trablus"),
  ];
  List<DropdownMenuItem<String>> Eygpt = [
    DropdownMenuItem(child: Text("Cairo"), value: "Cairo"),
    DropdownMenuItem(child: Text("Alexandria"), value: "Alexandria"),
  ];
  bool isChecked = false;

  TextEditingController nameEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController phoneEditingController = TextEditingController();
  String str = 'Full Name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Personal information"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                child: TextFormField(
                  validator: (value) => value!.length < 4
                      ? "Enter a name larger than 3 charchters"
                      : null,
                  controller: nameEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    labelText: str,
                    labelStyle: TextStyle(fontSize: 14),
                    hintText: 'Enter your full name',
                    hintStyle: TextStyle(fontSize: 12),
                    icon: Icon(Icons.person),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: TextFormField(
                    controller: emailEditingController,
                  validator: (value) => !EmailValidator.validate(value!)
                      ? "Enter a valid email"
                      : null,
                  decoration: InputDecoration(
                      labelText: 'Email ',

                      labelStyle: TextStyle(fontSize: 14),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      icon: Icon(Icons.email)),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: TextFormField(
                    controller: phoneEditingController,

                    validator: (value) => value!.length < 9 || value.length > 10
                      ? "Enter a valid phone number"
                      : null,
                  decoration: InputDecoration(
                      prefixText: "970",
                      labelText: 'Phone',
                      labelStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      icon: Icon(Icons.phone)),
                  keyboardType: TextInputType.phone,
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: DropdownButtonFormField(
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
                    validator: (value) =>
                        value == null ? "Select a city" : null,
                    dropdownColor: Colors.white,
                    value: CountryselectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        CountryselectedValue = newValue!;
                        if (CountryselectedValue == 'Palestine') {
                          outcities = Palestine;
                        } else if (CountryselectedValue == 'Lebanon') {
                          outcities = Lebanon;
                        } else {
                          outcities = Eygpt;
                        }
                      });
                    },
                    items: countries),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: DropdownButtonFormField(
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
                ),
              ),
              Container(
                child: Center(
                  child: Row(
                    children: [
                      Text("Accept Conditions"),
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (isChecked) {
                    if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainFrom(name: nameEditingController.text,email: emailEditingController.text,mobile:phoneEditingController.text,country: CountryselectedValue,city:CityselectedValue),
                            ));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('You must accept conditions')),
                    );
                  }
                },
                child: Text("Register"),
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//how to handle json response in to dart

//page1 - homepage -> btn(map example);
//page2 - map example -> btn(simple map , map class constructor , list map class.. , handling json map into dart);
//page3 - map example -> btn(simple map);
//page4 - map example -> btn(map class constructor);
//page5 - map example -> btn(list map class..);
//page6 - map example -> btn(handling json map into dart);

import 'dart:ffi';

import 'package:flutter/material.dart';

class Api_Dart1 extends StatefulWidget {
  const Api_Dart1({super.key});

  @override
  State<Api_Dart1> createState() => _Api_Dart1State();
}

class _Api_Dart1State extends State<Api_Dart1> {
  Map api_map1 = {
    "surname": "tapaniya",
    "name": "pradip",
    "age": "20",
    "mobile_number": "+91 7016452294",
  };

  ApiDartClass1 apidartclassvar = ApiDartClass1(
      surname: "tapaniya",
      name: "pradip",
      age: 20,
      mobilenumber: "+91 7016452294");

  List<ApiDartClass1> apidartclasslist = [
    ApiDartClass1(
        surname: "tapaniya-1",
        name: "pradip-1",
        age: 20,
        mobilenumber: "+91 7016452294"),
    ApiDartClass1(
        surname: "tapaniya-2",
        name: "pradip-1",
        age: 20,
        mobilenumber: "+91 9429860195")
  ];

  JsonDataClass jsondatavar = JsonDataClass.fromJson({
    "userId": 1,
    "id": 1,
    "title":
        "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body":
        "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Center(
          child: Text(
            'api_data_print',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${api_map1['mobile_number']}',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              '${apidartclassvar.surname}',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              '${apidartclasslist[1].name}',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'json data = ${jsondatavar.title}',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}

class ApiDartClass1 {
  String? surname;
  String? name;
  int? age;
  String? mobilenumber;

  ApiDartClass1(
      {required this.surname,
      required this.name,
      required this.age,
      required this.mobilenumber});
}

class JsonDataClass {
  int? userId;
  int? id;
  String? title;
  String? body;

  JsonDataClass(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  JsonDataClass.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
}

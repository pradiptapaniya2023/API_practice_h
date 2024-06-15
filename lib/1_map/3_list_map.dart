import 'package:flutter/material.dart';

class Map_List extends StatefulWidget {
  const Map_List({super.key});

  @override
  State<Map_List> createState() => _Map_ListState();
}

class _Map_ListState extends State<Map_List> {
  List<ApiDartClass1> apidartclasslist = [
    ApiDartClass1(
        surname: "tapaniya-1",
        name: "pradip-1",
        age: 20,
        mobilenumber: "+91 7016452294"),
    ApiDartClass1(
        surname: "tapaniya-2",
        name: "pradip-2",
        age: 20,
        mobilenumber: "+91 9429860195")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LIST/MAP",
          style: TextStyle(fontFamily: "familyfont"),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("asset/images/Inside bg.jpg"))),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 105),
                height: 400,
                width: 310,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text('${apidartclasslist[0].name}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: "familyfont")),
                ),
            ),
            SizedBox(height: 40),
            Container(
              height: 64,
              width: 170,
              child: InkWell(
                onTap: () {},
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.yellow[650],
                ),
              ),
            )
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


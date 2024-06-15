import 'package:flutter/material.dart';

class Map_Single extends StatefulWidget {
  const Map_Single({super.key});

  @override
  State<Map_Single> createState() => _Map_SingleState();
}

class _Map_SingleState extends State<Map_Single> {
  ApiDartClass1 apidartclassvar = ApiDartClass1(
      surname: "tapaniya",
      name: "pradip",
      age: 20,
      mobilenumber: "+91 7016452294");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CLASS USING MAP",
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
                child: Text('${apidartclassvar.surname}',
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

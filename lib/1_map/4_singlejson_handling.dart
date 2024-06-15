import 'package:flutter/material.dart';

class Map_Json extends StatefulWidget {
  const Map_Json({super.key});

  @override
  State<Map_Json> createState() => _Map_JsonState();
}

class _Map_JsonState extends State<Map_Json> {
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
      appBar: AppBar(
        title: Text(
          "JSON HANDLING",
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
                child: Text('json data => ${jsondatavar.title}',textAlign: TextAlign.center,
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

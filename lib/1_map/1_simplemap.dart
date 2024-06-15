import 'package:flutter/material.dart';

class Simplemap extends StatefulWidget {
  const Simplemap({super.key});

  @override
  State<Simplemap> createState() => _SimplemapState();
}

class _SimplemapState extends State<Simplemap> {
  Map api_map1 = {
    "surname": "tapaniya",
    "name": "pradip",
    "age": "20",
    "mobile_number": "+91 7016452294",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SIMPLEMAP",
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
                child: Text('${api_map1['mobile_number']}',
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
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: ListView(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image:
                                      DecorationImage(image: AssetImage(""))),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.yellow[650],
                  child: Center(
                    child: Text('API ?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: "familyfont")),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

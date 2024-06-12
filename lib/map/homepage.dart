import 'package:api_prac_1/map/map_simple.dart';
import 'package:flutter/material.dart';
import 'map_list_class.dart';
import 'map_single_class.dart';
import 'map_singlejson_handling.dart';

class Map_Homepage extends StatefulWidget {
  const Map_Homepage({super.key});

  @override
  State<Map_Homepage> createState() => _Map_HomepageState();
}

class _Map_HomepageState extends State<Map_Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "{MAP}",
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
              margin: EdgeInsets.all(10),
              height: 40,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Simplemap();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                    "SIMPLE MAP",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "fontfamily",
                        fontSize: 20),
                  ))),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Map_List();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                    "LIST MAP",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "fontfamily",
                        fontSize: 20),
                  ))),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Map_Single();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                    "MAP SINGLE CLASS",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "fontfamily",
                        fontSize: 20),
                  ))),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Map_Json();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                    "MAP SINGLE JSON",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "fontfamily",
                        fontSize: 20),
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_multiple_map/list_multiplemap1.dart';
import 'map/homepage.dart';
import 'multiple_map/home_page.dart';
import 'multiple_map/map_inside2mapdart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "API TOPIC",
            style: TextStyle(fontFamily: "familyfont"),
          )),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("asset/images/Bg.jpg"))),
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
                          return Map_Homepage();
                        },
                      ));
                    },
                    child: Center(
                        child: Text(
                      "{MAP}",
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
                          return HomePage_multiplemap();
                        },
                      ));
                    },
                    child: Center(
                        child: Text(
                      "{MAP{MAP}}",
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
                          return ListMultiplemap1();
                        },
                      ));
                    },
                    child: Center(
                        child: Text(
                      "[LIST{MAP{MAP{MAP}}}]",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "fontfamily",
                          fontSize: 20),
                    ))),
              ),
            ],
          ),
        ));
  }
}

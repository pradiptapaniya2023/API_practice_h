import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '1_map/homepage.dart';
import '2_map_map/home_page.dart';
import '3_list_map_map/homepage.dart';
import '4_map_list_map_map/homepage.dart';
import '5_API_releted_task/homepage.dart';
import '6_API_get/homepage.dart';

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
                margin: EdgeInsets.only(top: 60),
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
                height: 110,
                width: 310,
                decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return HomePage_List_Insidemap();
                        },
                      ));
                    },
                    child: Center(
                        child: Text(
                      "[\tLIST \n\t\t {MAP{MAP{MAP}}} \n\t]",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "fontfamily",
                          fontSize: 20),
                    ))),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 150,
                width: 310,
                decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return HomePage_Map_List_Insidemap();
                        },
                      ));
                    },
                    child: Center(
                        child: Text(
                      "{MAP \n\t [\tLIST \n\t\t {MAP{MAP{MAP}}} \n\t\t] \n}",
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
                          return Map_taskclass();
                        },
                      ));
                    },
                    child: Center(
                        child: Text(
                      "MAP TASK",
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
                          return Api_Homepage();
                        },
                      ));
                    },
                    child: Center(
                        child: Text(
                      "API_GET",
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

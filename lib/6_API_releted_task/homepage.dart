import 'package:flutter/material.dart';

import '1_map_map_list_map.dart';
import '2_task/2.1_map_list_dataprint.dart';

class Map_taskclass extends StatefulWidget {
  const Map_taskclass({super.key});

  @override
  State<Map_taskclass> createState() => _Map_taskclassState();
}

class _Map_taskclassState extends State<Map_taskclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MAP EXTRA TASK",
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
              margin: EdgeInsets.only(top: 219),
              height: 40,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return One_Twomap_List_Map();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                    "TASK1 (MAP/MAP/LIST/MAP)",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "fontfamily",
                        fontSize: 20),
                  ))),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.blueAccent[100],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Map_List_Dataprint();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                    "TASK2 (MAP/LIST - DATA PRINT)",
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

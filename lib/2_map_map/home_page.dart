import 'package:api_prac_1/2_map_map/2_map_inside3map.dart';
import 'package:flutter/material.dart';
import '1_map_inside2map.dart';
import '3_map_inside4map.dart';
import '4_map_inside5map.dart';



class HomePage_multiplemap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return State_HomePage_multiplemap();
  }
}

class State_HomePage_multiplemap extends State<HomePage_multiplemap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MAP/MAP",
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
                        return MultipleMap2();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                        "MAP/MAP",
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
                        return MultipleMap3();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                        "MAP/MAP/MAP",
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
                        return MultipleMap4();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                        "MAP/MAP/MAP/MAP",
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
                        return MultipleMap5();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                        "MAP/MAP/MAP/MAP/MAP",
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

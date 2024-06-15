import 'package:api_prac_1/2_map_map/2_map_inside3map.dart';
import 'package:flutter/material.dart';
import '1_list_insidemap.dart';

class HomePage_List_Insidemap extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return State_HomePage_List_Insidemap();
  }
}

class State_HomePage_List_Insidemap extends State<HomePage_List_Insidemap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LIST/MAP/MAP",
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
                        return ListMultiplemap1();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                    "LIST/MAP/MAP",
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

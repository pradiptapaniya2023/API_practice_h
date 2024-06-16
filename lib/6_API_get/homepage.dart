import 'package:flutter/material.dart';

import '1_get_api.dart';

class Api_Homepage extends StatefulWidget {

  @override
  State<Api_Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Api_Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "API GET HOME PAGE",
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
                        return First_Apiget();
                      },
                    ));
                  },
                  child: Center(
                      child: Text(
                        "GET API",
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

import 'dart:convert';
import 'package:flutter/material.dart';

class MultipleMap5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return State_MultipleMap5();
  }
}

class State_MultipleMap5 extends State<MultipleMap5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MAP/MAP/MAP/MAP/MAP",
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
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        // Center(
                        //   child: Text(
                        //       ' ->${ud.id} \n ->${ud.name} \n ->${ud.username} \n ->${ud.email} \n ->${ud.address!.street} \n ->${ud.address!.suite} \n ->${ud.address!.city} \n ->${ud.address!.zipcode} \n ->${ud.address!.geo!.lat} \n ->${ud.address!.geo!.lng} \n ->${ud.phone} \n ->${ud.website} \n ->${ud.company!.name} \n ->${ud.company!.catchPhrase} \n ->${ud.company!.bs}',
                        //       style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 25,
                        //           fontFamily: "familyfont")),
                        // ),
                      ],
                    ),
                  )
                ],
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
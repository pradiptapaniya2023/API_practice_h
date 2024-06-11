import 'package:flutter/material.dart';

import 'map_inside2mapdart';
import 'map_inside3map.dart';
import 'map_inside4map.dart';

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
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MultipleMap1();
                      },
                    ));
                  },
                  child: Text("MAP INSIDE 2 MAP"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MultipleMap2();
                      },
                    ));
                  },
                  child: Text("MAP INSIDE 3 MAP"))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MultipleMap4();
                      },
                    ));
                  },
                  child: Text("MAP INSIDE 4 MAP"))),
        ],
      ),
    );
  }
}

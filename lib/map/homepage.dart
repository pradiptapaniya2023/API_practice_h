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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Simplemap();
                    },
                  ));
                },
                child: Text("SIMPLE MAP")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Map_List();
                    },
                  ));
                },
                child: Text("LIST MAP")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Map_Single();
                    },
                  ));
                },
                child: Text("MAP SINGLE CLASS")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Map_Json();
                    },
                  ));
                },
                child: Text("MAP SINGLE JSON")),
          )
        ],
      ),
    );
  }
}

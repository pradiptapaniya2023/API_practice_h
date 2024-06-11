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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Map_Homepage();
                    },
                  ));
                },
                child: Text("MAP")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return HomePage_multiplemap();
                    },
                  ));
                },
                child: Text("MULTIPLE MAP")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ListMultiplemap1();
                    },
                  ));
                },
                child: Text("LIST MULTIPLE MAP")),
          ),
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';

class One_Twomap_List_Map extends StatefulWidget {
  @override
  State<One_Twomap_List_Map> createState() => _One_Twomap_List_MapState();
}

class _One_Twomap_List_MapState extends State<One_Twomap_List_Map> {
  String response = ''' {
  "connection": "true",
  "result": "true",
  "app_details": {
    "name": "Flutter Store",
    "icon": "https://flutterwala.com/web_store/images/appIcon.png",
    "description": "App Description"
  },
  "app_downloads": {
    "android": "https://flutterwala.com/web_store/apk/flutterstore.apk",
    "ios": "https://flutterwala.com/web_store/apk/flutterstore.apk"
  },
  "app_images": {
    "topImg": "https://flutterwala.com/web_store/images/topImg.png",
    "bottom": "https://flutterwala.com/web_store/images/bottomImg.png"
  },
  "app_number_data": [
    {
      "icon": "https://flutterwala.com/web_store/icons/happyClients.png",
      "title": "Happy Clients",
      "number": "20+"
    },
    {
      "icon": "https://flutterwala.com/web_store/icons/appDownloads.png",
      "title": "App Downloads",
      "number": "20+"
    },
    {
      "icon": "https://flutterwala.com/web_store/icons/appRattings.png",
      "title": "Ratting",
      "number": "3.5"
    }
  ]
}''';

  DataClass? dc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var StringToMap = json.decode(response);
    dc = DataClass.fromJson(StringToMap);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MAP/MAP/LIST/MAP",
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
              child: Center(
                child: Text(
                    '->${dc!.app_number_data![0].number} \n ->${dc!.result} \n ->${dc!.app_images!.topImg} \n ->${dc!.app_number_data![1].title}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: "familyfont")),
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 64,
              width: 170,
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: ListView(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image:
                                      DecorationImage(image: AssetImage(""))),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.yellow[650],
                  child: Center(
                    child: Text('API ?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: "familyfont")),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DataClass {
  String? connection;
  String? result;
  Data_Appdetails? app_details;
  Data_Appdownloads? app_downloads;
  Data_Appimages? app_images;
  List<Data_Appnumberdata>? app_number_data;

  DataClass(this.connection, this.result, this.app_details, this.app_downloads,
      this.app_images, this.app_number_data);

  DataClass.fromJson(Map<String, dynamic> json) {
    connection = json["connection"];
    result = json["result"];
    app_details = Data_Appdetails.fromJson(json["app_details"]);
    app_downloads = Data_Appdownloads.fromJson(json["app_downloads"]);
    app_images = Data_Appimages.fromJson(json["app_images"]);
    app_number_data = <Data_Appnumberdata>[];
    json["app_number_data"].forEach((e) {
      app_number_data!.add(Data_Appnumberdata.fromJson(e));
    });
  }
}

class Data_Appdetails {
  String? name;
  String? icon;
  String? description;

  Data_Appdetails(this.name, this.icon, this.description);

  Data_Appdetails.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    icon = json["icon"];
    description = json["description"];
  }
}

class Data_Appdownloads {
  String? android;
  String? ios;

  Data_Appdownloads(this.android, this.ios);

  Data_Appdownloads.fromJson(Map<String, dynamic> json) {
    android = json["android"];
    ios = json["ios"];
  }
}

class Data_Appimages {
  String? topImg;
  String? bottom;

  Data_Appimages(this.topImg, this.bottom);

  Data_Appimages.fromJson(Map<String, dynamic> json) {
    topImg = json["topImg"];
    bottom = json["bottom"];
  }
}

class Data_Appnumberdata {
  String? icon;
  String? title;
  String? number;

  Data_Appnumberdata(this.icon, this.title, this.number);

  Data_Appnumberdata.fromJson(Map<String, dynamic> json) {
    icon = json["icon"];
    title = json["title"];
    number = json["number"];
  }
}

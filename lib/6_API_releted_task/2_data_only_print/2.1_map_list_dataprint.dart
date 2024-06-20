// API JSON  LINK : https://dummyjson.com/products/1

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Map_List_Dataprint extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return State_Map_List_Dataprint();
  }
}

class State_Map_List_Dataprint extends State<Map_List_Dataprint> {
  String response = ''' {
  "id": 1,
  "title": "Essence Mascara Lash Princess",
  "description": "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
  "category": "beauty",
  "price": 9.99,
  "discountPercentage": 7.17,
  "rating": 4.94,
  "stock": 5,
  "tags": [
    "beauty",
    "mascara"
  ],
  "brand": "Essence",
  "sku": "RCH45Q1A",
  "weight": 2,
  "dimensions": {
    "width": 23.17,
    "height": 14.43,
    "depth": 28.01
  },
  "warrantyInformation": "1 month warranty",
  "shippingInformation": "Ships in 1 month",
  "availabilityStatus": "Low Stock",
  "reviews": [
    {
      "rating": 2,
      "comment": "Very unhappy with my purchase!",
      "date": "2024-05-23T08:56:21.618Z",
      "reviewerName": "John Doe",
      "reviewerEmail": "john.doe@x.dummyjson.com"
    },
    {
      "rating": 2,
      "comment": "Not as described!",
      "date": "2024-05-23T08:56:21.618Z",
      "reviewerName": "Nolan Gonzalez",
      "reviewerEmail": "nolan.gonzalez@x.dummyjson.com"
    },
    {
      "rating": 5,
      "comment": "Very satisfied!",
      "date": "2024-05-23T08:56:21.618Z",
      "reviewerName": "Scarlett Wright",
      "reviewerEmail": "scarlett.wright@x.dummyjson.com"
    }
  ],
  "returnPolicy": "30 days return policy",
  "minimumOrderQuantity": 24,
  "meta": {
    "createdAt": "2024-05-23T08:56:21.618Z",
    "updatedAt": "2024-05-23T08:56:21.618Z",
    "barcode": "9164035109868",
    "qrCode": "https://dummyjson.com/public/qr-code.png"
  },
  "images": [
    "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png"
  ],
  "thumbnail": "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/thumbnail.png"
}''';
  MarketData? md;
  int apiPlus = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DATAPRINT",
          style: TextStyle(fontFamily: "familyfont"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                apiPlus--;
                fetchApiData();
              });
            },
            child: Text("PREVIOUS",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "familyfont")),
          ),
          Text("/",
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: "familyfont")),
          TextButton(
            onPressed: () {
              setState(() {
                apiPlus++;
                fetchApiData();
              });
            },
            child: Text("NEXT",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "familyfont")),
          )
        ],
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
                margin: EdgeInsets.only(top: 97),
                height: 530,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                          "->${md!.id} \n ->${md!.tags![0]} \n ->${md!.dimensions!.width} \n ->${md!.reviews![1].reviewerName} \n ->${md!.reviews![2].reviewerEmail} \n ->${md!.images}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: "familyfont")),
                    ),
                    Image.network("${md!.images![0]}")
                  ],
                )),
          ],
        ),
      ),
    );
  }

  fetchApiData() async {
    var url = Uri.parse('https://dummyjson.com/products/${apiPlus}');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    setState(() {
      Map<String, dynamic> stringToMap = json.decode(response.body);
      md = MarketData.fromJson(stringToMap);
    });
  }
}

class MarketData {
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  List<String>? tags; //list
  String? brand;
  String? sku;
  int? weight;
  MarketDimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<MarketReviews>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
  MarketMeta? meta;
  List<String>? images;
  String? thumbnail;

  MarketData({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  MarketData.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    description = json["description"];
    category = json["category"];
    price = json["price"];
    discountPercentage = json["discountPercentage"];
    rating = json["rating"];
    stock = json["stock"];
    tags = json["tags"].cast<String>(); // error
    brand = json["brand"];
    sku = json["sku"];
    weight = json["weight"];
    dimensions = MarketDimensions.fromJson(json["dimensions"]);
    warrantyInformation = json["warrantyInformation"];
    shippingInformation = json["shippingInformation"];
    availabilityStatus = json["availabilityStatus"];
    reviews = <MarketReviews>[];
    json["reviews"].forEach((e) {
      reviews!.add(MarketReviews.fromJson(e));
    });
    returnPolicy = json["returnPolicy"];
    minimumOrderQuantity = json["minimumOrderQuantity"];
    meta = MarketMeta.fromJson(json["meta"]);
    images = json["images"].cast<String>();
    thumbnail = json["thumbnail"];
  }
}

class MarketDimensions {
  double? width;
  double? height;
  double? depth;

  MarketDimensions({
    required this.width,
    required this.height,
    required this.depth,
  });

  MarketDimensions.fromJson(Map<String, dynamic> json) {
    width = json["width"];
    height = json["height"];
    depth = json["depth"];
  }
}

class MarketReviews {
  int? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;

  MarketReviews({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  MarketReviews.fromJson(Map<String, dynamic> json) {
    rating = json["rating"];
    comment = json["comment"];
    date = json["date"];
    reviewerName = json["reviewerName"];
    reviewerEmail = json["reviewerEmail"];
  }
}

class MarketMeta {
  String? createAt;
  String? updateAt;
  String? barcode;
  String? qrCode;

  MarketMeta({
    required this.createAt,
    required this.updateAt,
    required this.barcode,
    required this.qrCode,
  });

  MarketMeta.fromJson(Map<String, dynamic> json) {
    createAt = json["createdAt"];
    updateAt = json["updatedAt"];
    barcode = json["barcode"];
    qrCode = json["qrCode"];
  }
}

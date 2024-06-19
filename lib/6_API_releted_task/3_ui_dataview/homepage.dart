import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage_UI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return State_Homepage();
  }
}

class State_Homepage extends State<Homepage_UI> {
  List categoriesName = [
    "Fashion",
    "Electronics",
    "Appliances",
    "Beauty",
    "Fashion",
    "Electronics",
    "Appliances",
    "Beauty",
    "Fashion",
    "Electronics",
    "Appliances",
    "Beauty",
    "Fashion",
    "Electronics",
    "Appliances",
    "Beauty",
  ];
  List categoriesColor = [
    Color(0xFFBAEFC8),
    Color(0xFFE3B6E5),
    Color(0xFFC4C4E8),
    Color(0xFFE8D79B),
    Color(0xFFF1C8C5),
    Color(0xFFD39EE1),
    Color(0xFFBAEFC8),
    Color(0xFFE3B6E5),
    Color(0xFFC4C4E8),
    Color(0xFFE8D79B),
    Color(0xFFF1C8C5),
    Color(0xFFD39EE1),
    Color(0xFFE8D79B),
    Color(0xFFF1C8C5),
    Color(0xFFD39EE1),
    Color(0xFFBAEFC8),
  ];
  List recommendedTest = [
    "Allen Solly Regular fit cotton shirt",
    "Calvin Clein Regular fit slim fit shirt",
    "Allen Solly Regular fit cotton shirt",
    "Calvin Clein Regular fit slim fit shirt",
    "Allen Solly Regular fit cotton shirt",
    "Calvin Clein Regular fit slim fit shirt",
    "Allen Solly Regular fit cotton shirt",
    "Calvin Clein Regular fit slim fit shirt",
    "Allen Solly Regular fit cotton shirt",
    "Calvin Clein Regular fit slim fit shirt",
    "Allen Solly Regular fit cotton shirt",
    "Calvin Clein Regular fit slim fit shirt",
    "Allen Solly Regular fit cotton shirt",
    "Calvin Clein Regular fit slim fit shirt",
    "Allen Solly Regular fit cotton shirt",
    "Calvin Clein Regular fit slim fit shirt",
  ];
  List price = [
    "35",
    "52",
    "35",
    "52",
    "35",
    "52",
    "35",
    "52",
    "35",
    "52",
    "35",
    "52",
    "35",
    "52",
    "35",
    "52",
  ];
  List cutPrice = [
    "40.2",
    "62.24",
    "40.2",
    "62.24",
    "40.2",
    "62.24",
    "40.2",
    "62.24",
    "40.2",
    "62.24",
    "40.2",
    "62.24",
    "40.2",
    "62.24",
    "40.2",
    "62.24",
  ];
  List discount = [
    "15",
    "20",
    "15",
    "20",
    "15",
    "20",
    "15",
    "20",
    "15",
    "20",
    "15",
    "20",
    "15",
    "20",
    "15",
    "20",
  ];
  List rating = [
    "4.4 (412)",
    "4.2 (214)",
    "4.4 (412)",
    "4.2 (214)",
    "4.4 (412)",
    "4.2 (214)",
    "4.4 (412)",
    "4.2 (214)",
    "4.4 (412)",
    "4.2 (214)",
    "4.4 (412)",
    "4.2 (214)",
    "4.4 (412)",
    "4.2 (214)",
    "4.4 (412)",
    "4.2 (214)",
  ];
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {},
            child: Image(
              image: AssetImage("asset/images/6_3/menu.png"),
            )),
        title: Text(
          "Home",
          style: TextStyle(
              color: Colors.black, fontFamily: "fontfamily", fontSize: 20),
        ),
        actions: [
          InkWell(
              onTap: () {},
              child: Image(
                image:
                    AssetImage("asset/images/6_3/Notification Icon Group.png"),
              )),
          SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {},
              child: Image(
                image: AssetImage("asset/images/6_3/Icon-03.png"),
              )),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                controller: searchController,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "familyfont"),
                decoration: InputDecoration(
                    hintText: "Search Anything",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "familyfont"),
                    contentPadding: EdgeInsets.all(10),
                    prefix: Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Image(
                        height: 20,
                        color: Colors.black,
                        image: AssetImage("asset/images/6_3/search-normal.png"),
                      ),
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none),
              )),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 22),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "familyfont"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 140),
                child: Text(
                  "View All >",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontFamily: "familyfont"),
                ),
              ),
            ],
          ),
          Flexible(
            flex: 1,
            child: ListView.builder(
              itemCount: categoriesName.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: categoriesColor[index],
                            shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            "${categoriesName[index].toString().substring(0, 1)}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontFamily: "familyfont"),
                          ),
                        ),
                      ),
                      Text(
                        "${categoriesName[index]}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: "familyfont"),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 22),
                child: Text(
                  "Recommended for you",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "familyfont"),
                ),
              ),
            ],
          ),
          Flexible(
            flex: 3,
            child: ListView.builder(
              itemCount: recommendedTest.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(3),
                      height: 300,
                      width: 185,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 110,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: categoriesColor[index]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            "${recommendedTest[index]}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "familyfont"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                textAlign: TextAlign.start,
                                "\$${price[index]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: "familyfont"),
                              ),
                              Text(
                                textAlign: TextAlign.start,
                                "\$${cutPrice[index]}",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontFamily: "familyfont"),
                              ),
                              Text(
                                textAlign: TextAlign.start,
                                "${discount[index]}% OFF",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange[600],
                                    fontSize: 17,
                                    fontFamily: "familyfont"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Image(
                                    image: AssetImage(
                                        "asset/images/6_3/Group 4.png")),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  textAlign: TextAlign.start,
                                  "${rating[index]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: "familyfont"),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(3),
                      height: 300,
                      width: 185,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 110,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: categoriesColor[index]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            "${recommendedTest[index]}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "familyfont"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                textAlign: TextAlign.start,
                                "\$${price[index]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: "familyfont"),
                              ),
                              Text(
                                textAlign: TextAlign.start,
                                "\$${cutPrice[index]}",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontFamily: "familyfont"),
                              ),
                              Text(
                                textAlign: TextAlign.start,
                                "${discount[index]}% OFF",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange[600],
                                    fontSize: 17,
                                    fontFamily: "familyfont"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Image(
                                    image: AssetImage(
                                        "asset/images/6_3/Group 4.png")),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  textAlign: TextAlign.start,
                                  "${rating[index]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: "familyfont"),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home_filled,
                    size: 50,
                    color: Colors.blueAccent,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                        fontSize: 17,
                        fontFamily: "familyfont"),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.category,
                    size: 50,
                    color: Colors.grey,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 17,
                        fontFamily: "familyfont"),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.pending,
                    size: 50,
                    color: Colors.grey,
                  ),
                  Text(
                    "Orders",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontFamily: "familyfont"),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.grey,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 17,
                        fontFamily: "familyfont"),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}

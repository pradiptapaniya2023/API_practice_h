import 'package:flutter/material.dart';

class MultipleMap2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return State_MultipleMap2();
  }
}

class State_MultipleMap2 extends State<MultipleMap2> {
  Map mMap = {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
  };

  Userdata ud = Userdata.fromJson({
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
  });

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
              margin: EdgeInsets.only(top: 105),
              height: 400,
              width: 310,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(children: [

              Center(
                  child: Text(' ->${ud.id} \n ->${ud.name} \n ->${ud.username} \n ->${ud.email} \n ->${ud.address!.street} \n ->${ud.address!.suite} \n ->${ud.address!.city} \n ->${ud.phone} \n ->${ud.website}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: "familyfont")),
                ),

              ],),
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

class Userdata {
  int? id;
  String? name;
  String? username;
  String? email;
  Useradderess? address;

  String? phone;
  String? website;

  Userdata({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
  });

  Userdata.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    username = json["username"];
    email = json["email"];
    address = Useradderess.fromJson(json["address"]);
    phone = json["phone"];
    website = json["website"];
  }
}

class Useradderess {
  String? street;
  String? suite;
  String? city;
  String? zipcode;

  Useradderess({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });

  Useradderess.fromJson(Map<String, dynamic> json) {
    street = json["street"];
    suite = json["suite"];
    city = json["city"];
    zipcode = json["zipcode"];
  }
}

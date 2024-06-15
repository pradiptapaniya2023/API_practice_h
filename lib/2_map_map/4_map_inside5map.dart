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
  String testMap = '''{
      "id": 1,
      "firstName": "Emily",
      "lastName": "Johnson",
      "maidenName": "Smith",
      "age": 28,
      "gender": "female",
      "email": "emily.johnson@x.dummyjson.com",
      "phone": "+81 965-431-3024",
      "username": "emilys",
      "password": "emilyspass",
      "birthDate": "1996-5-30",
      "image": "https://dummyjson.com/icon/emilys/128",
      "bloodGroup": "O-",
      "height": 193.24,
      "weight": 63.16,
      "eyeColor": "Green",
      "hair": {
        "color": "Brown",
        "type": "Curly"
      },
      "ip": "42.48.100.32",
      "address": {
        "address": "626 Main Street",
        "city": "Phoenix",
        "state": "Mississippi",
        "stateCode": "MS",
        "postalCode": "29112",
        "coordinates": {
          "lat": -77.16213,
          "lng": -92.084824
        },
        "country": "United States"
      },
      "macAddress": "47:fa:41:18:ec:eb",
      "university": "University of Wisconsin--Madison",
      "bank": {
        "cardExpire": "03/26",
        "cardNumber": "9289760655481815",
        "cardType": "Elo",
        "currency": "CNY",
        "iban": "YPUXISOBI7TTHPK2BR3HAIXL"
      },
      "company": {
        "department": "Engineering",
        "name": "Dooley, Kozey and Cronin",
        "title": "Sales Manager",
        "address": {
          "address": "263 Tenth Street",
          "city": "San Francisco",
          "state": "Wisconsin",
          "stateCode": "WI",
          "postalCode": "37657",
          "coordinates": {
            "lat": 71.814525,
            "lng": -161.150263
          },
          "country": "United States"
        }
      },
      "ein": "977-175",
      "ssn": "900-590-289",
      "userAgent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36",
      "crypto": {
        "coin": "Bitcoin",
        "wallet": "0xb9fc2fe63b2a6c003f1c324c3bfa53259162181a",
        "network": "Ethereum (ERC20)"
      },
      "role": "admin"
    }''';
  TestData? ud;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var jsonDecode = json.decode(testMap);
    ud = TestData.fromJson(jsonDecode);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("id ==[${ud!.id}]=="),
          Text("firstName ==[${ud!.firstName}]=="),
          Text("lastName ==[${ud!.lastName}]=="),
          Text("maidenName ==[${ud!.maidenName}]=="),
          Text("age ==[${ud!.age}]=="),
          Text("gender ==[${ud!.gender}]=="),
          Text("email ==[${ud!.email}]=="),
          Text("phone ==[${ud!.phone}]=="),
          Text("username ==[${ud!.username}]=="),
          Text("password ==[${ud!.password}]=="),
          Text("birthDate ==[${ud!.birthDate}]=="),
          Text("image ==[${ud!.image}]=="),
          Text("bloodGroup ==[${ud!.bloodGroup}]=="),
          Text("height ==[${ud!.height}]=="),
          Text("weight ==[${ud!.weight}]=="),
          Text("eyeColor ==[${ud!.eyeColor}]=="),
          Text(" \t hair/color ==[${ud!.hair!.color}]=="),
          Text(" \t hair/type ==[${ud!.hair!.type}]=="),
          Text("eyeColor ==[${ud!.eyeColor}]=="),
          Text("ip ==[${ud!.ip}]=="),
          Text("\t ud!.address!.address ==[${ud!.address!.address}]=="),
        ],
      ),
    );
  }
}

class TestData {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  double? height;
  double? weight;
  String? eyeColor;
  TestHair? hair;
  String? ip;
  TestAddress? address;
  String? macAddress;
  String? university;
  TestBank? bank;
  TestCompany? company;
  String? ein;
  String? ssn;
  String? userAgent;
  TestCrypto? crypto;
  String? role;

  TestData(
      this.id,
      this.firstName,
      this.lastName,
      this.maidenName,
      this.age,
      this.gender,
      this.email,
      this.phone,
      this.username,
      this.password,
      this.birthDate,
      this.image,
      this.bloodGroup,
      this.height,
      this.weight,
      this.eyeColor,
      this.hair,
      this.ip,
      this.address,
      this.macAddress,
      this.university,
      this.bank,
      this.company,
      this.ein,
      this.ssn,
      this.userAgent,
      this.crypto,
      this.role);

  TestData.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    lastName = json["lastName"];
    maidenName = json["maidenName"];
    gender = json["gender"];
    email = json["email"];
    phone = json["phone"];
    username = json["username"];
    password = json["password"];
    birthDate = json["birthDate"];
    image = json["image"];
    bloodGroup = json["bloodGroup"];
    height = json["height"];
    weight = json["weight"];
    eyeColor = json["eyeColor"];
    hair = TestHair.fromJson(json["hair"]);
    ip = json["ip"];
    address = TestAddress.fromJson(json["address"]);
    macAddress = json["macAddress"];
    university = json["university"];
    bank = TestBank.fromJson(json["bank"]);
    company = TestCompany.fromJson(json["company"]);
    ein = json["ein"];
    ssn = json["ssn"];
    userAgent = json["userAgent"];
    crypto = TestCrypto.fromJson(json["crypto"]);
    role = json["role"];
  }
}

class TestHair {
  String? color;
  String? type;

  TestHair(this.color, this.type);

  TestHair.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    type = json["type"];
  }
}

class TestAddress {
  String? address;
  String? city;
  String? state;
  String? stateCode;
  String? postalCode;
  AddressCoordinates? coordinates;
  String? country;

  TestAddress(this.address, this.city, this.state, this.stateCode,
      this.postalCode, this.coordinates, this.country);

  TestAddress.fromJson(Map<String, dynamic> json) {
    address = json["address"];
    city = json["city"];
    state = json["state"];
    stateCode = json["stateCode"];
    postalCode = json["postalCode"];
    coordinates = AddressCoordinates.fromJson(json["coordinates"]);
    country = json["country"];
  }
}

class AddressCoordinates {
  var lat;
  var lng;

  AddressCoordinates(this.lat, this.lng);

  AddressCoordinates.fromJson(Map<String, dynamic> json) {
    lat = json["lat"];
    lng = json["lng"];
  }
}

class TestBank {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  TestBank(this.cardExpire, this.cardNumber, this.cardType, this.currency,
      this.iban);

  TestBank.fromJson(Map<String, dynamic> json) {
    cardExpire = json["cardExpire"];
    cardNumber = json["cardNumber"];
    cardType = json["cardType"];
    currency = json["currency"];
    iban = json["iban"];
  }
}

class TestCompany {
  String? department;
  String? name;
  String? title;
  TestAddress? address;

  TestCompany(this.department, this.name, this.title, this.address);

  TestCompany.fromJson(Map<String, dynamic> json) {
    department = json["department"];
    name = json["name"];
    title = json["title"];
    address = TestAddress.fromJson(json["address"]);
  }
}

class TestCrypto {
  String? coin;
  String? wallet;
  String? network;

  TestCrypto(this.coin, this.wallet, this.network);

  TestCrypto.fromJson(Map<String, dynamic> json) {
    coin = json["coin"];
    wallet = json["wallet"];
    network = json["network"];
  }
}

// String -> Map => json.decode(String);
// Map -> String => json.encode(Map);

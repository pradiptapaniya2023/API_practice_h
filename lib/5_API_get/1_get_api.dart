import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class First_Apiget extends StatefulWidget {
  const First_Apiget({super.key});

  @override
  State<First_Apiget> createState() => _First_ApigetState();
}

class _First_ApigetState extends State<First_Apiget> {
  QuotesModelClass? qmc;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading?Center(child: CircularProgressIndicator()):ListView.builder(
        itemCount: qmc!.quotes!.length,
        itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text("total quotes : ${qmc!.quotes![index].id}"),
              Text("total quotes : ${qmc!.quotes![index].quote}"),
              Text("total quotes : ${qmc!.quotes![index].author}"),
              Divider()
            ],
          ),
        );
      },),
    );
  }

  fetchApiData() async {
    var url = Uri.parse('https://dummyjson.com/quotes');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    setState(() {
      Map<String, dynamic> jsonMap = json.decode(response.body);
      qmc = QuotesModelClass.fromJson(jsonMap);
      isLoading=false;
    });
  }
}

class QuotesModelClass {
  List<Quotes>? quotes;
  int? total;
  int? skip;
  int? limit;

  QuotesModelClass({this.quotes, this.total, this.skip, this.limit});

  QuotesModelClass.fromJson(Map<String, dynamic> json) {
    if (json['quotes'] != null) {
      quotes = <Quotes>[];
      json['quotes'].forEach((v) {
        quotes!.add(new Quotes.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.quotes != null) {
      data['quotes'] = this.quotes!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}

class Quotes {
  int? id;
  String? quote;
  String? author;

  Quotes({this.id, this.quote, this.author});

  Quotes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quote = json['quote'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quote'] = this.quote;
    data['author'] = this.author;
    return data;
  }
}

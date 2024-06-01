import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muscledev/styling/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Model class representing a person
class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  // Serialize Person object to JSON
  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age};
  }

  // Deserialize JSON to Person object
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(name: json['name'], age: json['age']);
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Person> persons = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColors.bagroundColor,
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "BODY PART",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "OpenSans"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff2C2C2E),
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                            height: 60,
                            child:
                                Image.asset("assets/images/splashdumbell.png")),
                        Column(
                          children: [],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

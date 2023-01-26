import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Color> myColor = [
    Color.fromARGB(255, 245, 145, 145),
    Color.fromARGB(255, 145, 245, 197),
    Color.fromARGB(255, 245, 243, 145),
    Color.fromARGB(255, 152, 145, 245)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Annisa - Listview"),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              height: 400,
              width: 300,
              color: myColor[index],
            );
          },
        ),
      ),
    );
  }
}

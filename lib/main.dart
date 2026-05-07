import 'package:flutter/material.dart';

void main() {
  print("Hello World");
  //runApp
  runApp(HelloApp());
}


class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello world"),
        ),
        body: Center(
          child: Text("Hello world!!dfdfgfdsgsfdgsfd"),
        ) ,
      )
    );
  }
}






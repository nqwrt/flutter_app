import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [

            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blue[100],
                )
            ),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.orange[100],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.settings,
                        size: 40,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.red,
                      ),
                    ],
                  ),
                )
            )


          ],
        ),
      ),
    );
  }
}



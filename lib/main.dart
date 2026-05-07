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
            // 위 영역
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue[100],
              ),
            ),

            // 아래 영역
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange[100],

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: const [
                    Icon(
                      Icons.settings,
                      size: 40,
                      color: Colors.blue,
                    ),

                    //SizedBox(height: 10),

                    Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
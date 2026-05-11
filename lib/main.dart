import 'package:flutter/material.dart';

void main() {
  print("메인실행");
  runApp(MyApp());
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(),
//     );
//   }
// }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    print("build() 함수 호출");

    return MaterialApp(
       home: CountWidget(),
    );
  }
}

class CountWidget extends StatefulWidget {
  const CountWidget({super.key});

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {

  int count = 0;
  int num = 0;

  void _increment(){
    setState(() {
      count++;
    });
  }

  @override
  void initState() {
    super.initState();
    print(" initState() 호출");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print(" didChangeDependencies() 호출");
  }

  @override
  void didUpdateWidget(covariant CountWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    super.deactivate();
    print("⚠️ deactivate 호출");
  }

  @override
  void dispose() {
    print("❌ dispose 호출");
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    print("스테이트 풀 build()");

    return Scaffold(
      appBar: AppBar(
        title: Text("카운터 앱"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("카운트: $count"),
            ElevatedButton(
                onPressed:_increment,
                child: Text("증가")
            ),
            ElevatedButton(
                onPressed:(){
                  setState(() {
                    count--;
                  });
                },
                child: Text("감소")
            )


          ],
        ),
      ),
    );
  }
}








// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//
//   int count = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           child: Column(
//             children: [
//               Text("카운트:$count",style: Theme.of(context).textTheme.displaySmall,),
//               ElevatedButton(
//                   onPressed: (){
//                     count++;//count = count + 1
//                     print(count);
//                   },
//                   child: Text("증가",style:Theme.of(context).textTheme.displaySmall,)
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

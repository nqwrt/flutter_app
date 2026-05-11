import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
    print(" didUpdateWidget() 호출");
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

    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    //print(size.width);
    //print(size.height);


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
            ),
            Text("가로: $width",style: Theme.of(context).textTheme.displaySmall,),
            Text("가로: $height",style: Theme.of(context).textTheme.displaySmall,),
            Container(
              width: width * 0.8,
              height: 100,
              color: Colors.amber,
            ),
            ElevatedButton(
                onPressed: (){
                  print("다음화면 버튼");

                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => SecondPage(),
                    ),
                  );

                },
                child: Text("다음 화면")
            )
          ],
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});


  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;

    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("상태바 높이: ${padding.top}"),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("뒤로가기"),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

                print("다음화면 버튼");

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(),
                  ),
                );

              },
              child: const Text("3번째 페이지로 가기"),
            ),



          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;

    return Scaffold(
      appBar: AppBar(title: const Text("세번째 페이지")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("상태바 높이: ${padding.top}"),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("뒤로가기"),
            ),
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

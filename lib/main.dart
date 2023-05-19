import 'dart:async';

import 'package:figma/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 6),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => page())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/imageback.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 200,
                height: 100,
                child: Image.asset('assets/logo.png'),
              ),
            )
          ],
        ),
      ),
    );
  }

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Stack(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("assets/imageback.png"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Center(
//               child: Container(
//                 width: 200,
//                 height: 100,
//                 child: Image.asset('assets/logo.png'),
//               ),
//             )
//           ],
//
//           // decoration: BoxDecoration(
//           //   image: DecorationImage(
//           //     image: AssetImage("assets/imageback.png"),
//           //     fit: BoxFit.cover,
//           //   ),
//           // ),
//         ),
//       ),
//     );
//   }
// }
}

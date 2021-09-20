import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/splash_screen.dart';

import 'pages/login.dart';

void main() {
  runApp(MyApp());
}

// test comment
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SplashScreen(),
    );
  }
}

import 'package:apps_1/page_1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assessment',
      theme: ThemeData(
        
      primarySwatch: Colors.blue,
      ),
      home: Page1(),
    );
  }
}


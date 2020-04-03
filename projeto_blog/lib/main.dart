import 'package:flutter/material.dart';
import 'package:projeto_blog/pages/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog do Bruno',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.red,
      ),
      home: HomePage()
    );
  }
}



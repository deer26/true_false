import 'package:flutter/material.dart';
import 'package:truefalse/view/truefalse_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TrueFalse(),
    );
  }
}

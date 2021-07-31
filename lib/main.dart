import 'package:flutter/material.dart';
import 'package:temanajar/pages/choice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'temanajar',
      theme: ThemeData(),
      home: ChoiceScreen(),
    );
  }
}

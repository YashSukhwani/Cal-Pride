import 'package:berkeley/Pages/score_page.dart';
import 'package:flutter/material.dart';
import './Pages/landing_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    title: "My Cal Awareness",
    home: new LandingPage(),
  );
  }
}
import 'package:flutter/material.dart';
import 'package:tabsbottomnavigationbarstippersncakbar/home.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      title: "Tabs / BottomNavigationbar / Stipper / Snackbar",
      home:const Homepage(),
    );
  }
}


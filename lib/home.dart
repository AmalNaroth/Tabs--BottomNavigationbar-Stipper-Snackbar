import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  AlertDialog dialog=AlertDialog(
    content: Text("This is alert"),
    title: Text("This is home page"),
  );
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ElevatedButton(onPressed: (){
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("This is home page"),duration: Duration(seconds: 1),));
          showAboutDialog(context:context,children: [
            dialog
          ]);
        }, child: Text("Click here")),
      ),
    );
  }
}
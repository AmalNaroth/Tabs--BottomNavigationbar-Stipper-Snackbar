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

  List<Step> mySteps=[
      Step(title: Text("Step 1"), content: Text("This is homepage"),isActive: true),
      Step(title: Text("Step 2"), content: Text("This is second page"),isActive: true),
      Step(title: Text("Step 3"), content: Text("This is Thered page"),isActive: true)

    ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: stepper()
    );
  }

  Widget stepper (){
    return Stepper(
      type: StepperType.vertical,
      steps: mySteps,
    currentStep: 1,
    );
  }

  Widget uimessanger (){
    return Container(
        child: ElevatedButton(onPressed: (){
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("This is home page"),duration: Duration(seconds: 1),));
          showDialog(context: context, builder: (context) {
            return dialog;
          },);
        }, child: Text("Click here")),
      );
  }
}


import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin{
  AlertDialog dialog=AlertDialog(
    content: Text("This is alert"),
    title: Text("This is home page"),
    
  );

  List<Step> mySteps=[
      Step(title: Text("Step 1"), content: Text("This is homepage"),isActive: true),
      Step(title: Text("Step 2"), content: Text("This is second page"),isActive: true),
      Step(title: Text("Step 3"), content: Text("This is Thered page"),isActive: true)

    ];

    TabController? tabController;

    @override
    void initState() {
      super.initState();
      tabController = TabController(length: 2, vsync: this);
    }

    @override
  void dispose() {
    // TODO: implement dispose
    tabController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: tabController,
          tabs: [
          Tab(icon: Icon(Icons.favorite),),
          Tab(icon: Icon(Icons.add),)
        ])
      ),
      body: uitabwidget(),
      bottomNavigationBar: Material(
        color: Colors.black,
        child: TabBar(
          controller: tabController,
          tabs: [
          Tab(icon: Icon(Icons.favorite),),
          Tab(icon: Icon(Icons.ad_units),),
        ]),
      ),
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

  Widget uitabwidget(){
    return TabBarView(
      controller: tabController,
      children: <Widget> [
      PageOne(),
      PageTwo()
    ]);
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("First page"),),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Second page"),),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Container'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("R1", style: TextStyle(fontSize: 25)),
                    Text("R2", style: TextStyle(fontSize: 25)),
                    Column(
                      children: [
                        Text("R-C1", style: TextStyle(fontSize: 25)),
                        Text("R-C2", style: TextStyle(fontSize: 25)),
                      ],
                    ),
                    Text("R3", style: TextStyle(fontSize: 25)),
                    Text("R4", style: TextStyle(fontSize: 25)),
                    Text("R5", style: TextStyle(fontSize: 25)),
                    OutlinedButton(onPressed: () {}, child: Text("Clicked Me!"))
                  ]),
              Text("C2", style: TextStyle(fontSize: 25)),
              Text("C3", style: TextStyle(fontSize: 25)),
              Text("C4", style: TextStyle(fontSize: 25)),
              Text("C5", style: TextStyle(fontSize: 25)),
              Text("C6", style: TextStyle(fontSize: 25)),
              OutlinedButton(onPressed: () {}, child: Text("Clicked Me!"))
            ],
          ),
        ));
  }
}

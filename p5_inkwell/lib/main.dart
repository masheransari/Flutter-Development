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
          children: [
            ElevatedButton(
              child: Text("Click me!"),
              onPressed: () {
                print("clicked on a button");
              },
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.amberAccent,
              child: InkWell(
                  onTap: () {
                    print('Tab on a container');
                  },
                  onDoubleTap: () {
                    print("Double tab on a container");
                  },
                  onLongPress: () {
                    print("Long press on a container");
                  },
                  child: Container(
                    child: Center(
                        child: InkWell(
                      onTap: () {
                        print('Tab on a Text Label');
                      },
                      onDoubleTap: () {
                        print("Double tab on a Text Label");
                      },
                      onLongPress: () {
                        print("Long press on a Text Label");
                      },
                      child: Text("Click on a text label"),
                    )),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// ignore_for_file:prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: ListView(
          children: [
            Container(
              height: 100,
              color: Colors.white,
            ),
            // body(),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return body();
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
          children: [
            Center(
              child: Container(
                width: 250,
                margin: EdgeInsets.only(top: 100),
                height: 350,decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(16.0),
              ),),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  child: CircleAvatar(
                    radius: 125.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      // child: Align(
                      //   alignment: Alignment.bottomRight,
                      //   child: CircleAvatar(
                      //     backgroundColor: Colors.white,
                      //     radius: 12.0,
                      //     child: Icon(
                      //       Icons.camera_alt,
                      //       size: 15.0,
                      //       color: Color(0xFF404040),
                      //     ),
                      //   ),
                      // ),
                      radius: 125.0,
                      backgroundColor: Colors.black,
                    ),
                  ),)
            ),
          ]
      ),
    );
  }
}

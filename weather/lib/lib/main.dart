import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF5D50FE),
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 150,
                left: 0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/trang.png"),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 414,
                    height: 240,
                    color: Color(0xFF5C2AFF),
                  ),
                ],
              ),
              Positioned(
                bottom: 220,
                right: 12,
                child: Column(
                  children: <Widget>[Image.asset("assets/images/nen_mo.png")],
                ),
              ),
              Positioned(
                bottom: 220,
                right: 12,
                child: Column(
                  children: <Widget>[Image.asset("assets/images/nen_giua.png")],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: 180,
                  height: 59,
                  margin: const EdgeInsets.all(70),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Align(
                    alignment: Alignment.center,
                    child:  Text(
                      "EXPLORE",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 230,
                left: 0,
                right: 50,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/sun.png"),
                  ],
                ),
              ),
              Positioned(
                top: 240,
                left: 0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/images/cloud.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

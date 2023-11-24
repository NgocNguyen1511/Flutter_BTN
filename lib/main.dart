import 'package:flutter/material.dart';
import 'package:weather_app/weather_temperature.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'models/entities/info_weather_entity.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
}







void getDataWeather() async {
  var url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=HaNoi&units=metric&appid=82d78aef7a2755507e23056a5b7b885f');

  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
    convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    final result = InfoWeatherEntity.fromJson(jsonResponse);
    print('Ten TP: ${result}.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

class main1 extends StatelessWidget {
  const main1({Key? key}) : super(key: key);
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
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const weather_temperature(),
                      ),
                    );
                  },
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

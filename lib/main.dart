import 'package:flutter/material.dart';
import '../../../BaiAPI/WeatherApp-main/lib/Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WeatherApp',
      home: HomeScreenApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

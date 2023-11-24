import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/weather_plus.dart';

class weather_temperature extends StatefulWidget {
  const weather_temperature({Key? key}) : super(key: key);

  @override
  State<weather_temperature> createState() => _weather_temperatureState();
}

class _weather_temperatureState extends State<weather_temperature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    child: SvgPicture.asset("assets/vectors/ic_menu.svg"),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                const Expanded(
                  child: Text(
                    "Hà Nội, Việt Nam",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: SvgPicture.asset("assets/vectors/ic_search.svg"),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Today",
                  style: TextStyle(
                    color: Color(0xFF5D50FE),
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const weather_plus(),
                      ),
                    );
                  },
                  child: Container(
                    width: 360,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFF5D50FE),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Positioned(
                  top: 176,
                  left: 230,
                  child: Image.asset("assets/images/sun.png"),
                ),
                Positioned(
                  left: 210,
                  top: 190,
                  child: Image.asset("assets/images/cloud.png"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              alignment: Alignment.topCenter,
              child: const Text(
                "Next 12 days",
                style: TextStyle(fontSize: 18),
              ),
            ),
            hourlyList(),
          ],
        ),
      ),
    );
  }
}

Widget hourlyList() {
  return Container(
    height: 160,
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) {
          return Container(
            width: 60,
            height: 80,
            margin: const EdgeInsets.only(left: 20, right: 5),
            color: Colors.red,
            child: Text(
              "Days"
            ),
          );
        }),
  );
}

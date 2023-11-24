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
            SizedBox(height: 25,),
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
                SizedBox(width: 30,),
                Text(
                  "Tomorrow",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 30,),
                const Text(
                  "Next Week",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Stack(
              children: <Widget>[
                  InkWell(
                    onTap: (){
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
          ],
        ),
      ),
    );
  }
}

class WeatherPlus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          "Weather Plus",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

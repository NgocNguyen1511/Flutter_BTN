import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/weather_temperature.dart';

class weather_plus extends StatefulWidget {
  const weather_plus({Key? key}) : super(key: key);

  @override
  State<weather_plus> createState() => _weather_plusState();
}

class _weather_plusState extends State<weather_plus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: SvgPicture.asset("assets/vectors/ic_menu.svg"),
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
                  padding: EdgeInsets.all(16),
                  child: SvgPicture.asset("assets/vectors/ic_search.svg"),
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Stack(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).pop(
                    );
                  },
                  child: Container(
                    width: 360,
                    height: 598,
                    decoration: BoxDecoration(
                      color: Color(0xFF5D50FE),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 45,
                    left: 15,
                    child: Image.asset("assets/images/sun.png")),
                Positioned(
                    bottom: 0, child: Image.asset("assets/images/cloud.png"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

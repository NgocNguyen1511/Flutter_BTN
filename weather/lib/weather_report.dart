import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherReport extends StatefulWidget {
  const WeatherReport({Key? key}) : super(key: key);

  @override
  State<WeatherReport> createState() => _WeatherReportState();
}

class _WeatherReportState extends State<WeatherReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    child: SvgPicture.asset(
                      "assets/vectors/ic_menu.svg",
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 8),
                  child: const Text(
                    "Ha Noi, Viet Nam",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: SvgPicture.asset(
                    "assets/vectors/ic_search.svg",
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}


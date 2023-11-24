import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class weather_expanded extends StatefulWidget {
  const weather_expanded({Key? key}) : super(key: key);

  @override
  State<weather_expanded> createState() => _weather_expandedState();
}

class _weather_expandedState extends State<weather_expanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  child: SvgPicture.asset("assets/vectors/ic_menu.svg"),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
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
            Stack(
              children: <Widget>[
                Container(),
                Positioned(
                    child: Image.asset("assets/images/nen_expand.png")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

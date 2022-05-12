import 'package:flutter/material.dart';

import 'APIs/WeatherApi.dart';
import 'Card.dart';

void main() {
  runApp(MyWeather());
}

class MyWeather extends StatelessWidget {
  const MyWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCardDesign(),
    );
  }
}

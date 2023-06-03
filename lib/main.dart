import 'package:flutter/material.dart';

import 'pages/myweather.dart';

void main() {
  runApp(const WeatherScreen());
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWeatherScreen(),
    );
  }
}

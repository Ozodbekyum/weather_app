import 'package:flutter/material.dart';
import 'package:weather_app/pages/containers.dart';
import 'package:weather_app/pages/day_night.dart';
import 'package:weather_app/pages/weather_degree.dart';
import 'package:weather_app/pages/weather_types.dart';

class MyWeatherScreen extends StatefulWidget {
  const MyWeatherScreen({super.key});

  @override
  State<MyWeatherScreen> createState() => _MyWeatherScreenState();
}

class _MyWeatherScreenState extends State<MyWeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 19, 19),
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Locate',
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            )
          ],
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 19, 19, 19),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const WeatherDegree(),
          // const SizedBox(
          //   height: 2,
          // ),
          const MyContainer(
            daysName: 'Today',
            waterPercent: '100%',
            dailyDegree: '17° / 14°',
          ),
          const MyContainer(
            daysName: 'Friday',
            waterPercent: '100%',
            dailyDegree: '16° / 12°',
          ),
          const MyContainer(
            daysName: 'Saturday',
            waterPercent: '40%',
            dailyDegree: '20° / 15°',
          ),
          const MyContainer(
            daysName: 'Sunday',
            waterPercent: '11%',
            dailyDegree: '23° / 19°',
          ),
          const MyContainer(
            daysName: 'Monday',
            waterPercent: '12%',
            dailyDegree: '25° / 20°',
          ),
          Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                'More',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DayToNight(
                img: 'lib/img/hook.png',
                sunTime: 'SUNRISE',
                time: '6:51 am',
                colr: Colors.orange,
              ),
              DayToNight(
                img: 'lib/img/vic.png',
                sunTime: 'SUNSET',
                time: '5:50 pm',
                colr: Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WeatherTypes(
                  image: 'lib/img/pi.png',
                  wType: 'HUMIDITY',
                  percent: '100%',
                ),
                WeatherTypes(
                  image: 'lib/img/pu.png',
                  wType: 'WIND',
                  percent: '11 km/h',
                ),
                WeatherTypes(
                  image: 'lib/img/pi.png',
                  wType: 'UV',
                  percent: 'LOW',
                ),
              ],
            ),
          ),
          const SizedBox(height: 1),
        ],
      ),
    );
  }
}

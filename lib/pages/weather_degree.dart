import 'package:flutter/material.dart';

class WeatherDegree extends StatelessWidget {
  const WeatherDegree({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            '14',
            style: TextStyle(
              color: Colors.white,
              fontSize: 100,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 35),
          child: Icon(
            Icons.circle_outlined,
            color: Colors.white,
            size: 17,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 78, bottom: 30),
          child: Column(
            children: [
              Image.asset(
                'lib/img/Vector.png',
                height: 80,
                width: 80,
              ),
              const Text(
                '17° / 14° Feels like 12°',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              const Text(
                'Wed, 10 August 10:14 am',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

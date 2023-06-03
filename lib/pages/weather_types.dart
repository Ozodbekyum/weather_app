import 'package:flutter/material.dart';

class WeatherTypes extends StatelessWidget {
  final String image;
  final String wType;
  final String percent;

  const WeatherTypes({
    super.key,
    required this.image,
    required this.wType,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 93,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            // image: DecorationImage(image: AssetImage(img)),
            color: const Color.fromARGB(255, 30,30,30),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Image.asset(image),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  wType,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                percent,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 7,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

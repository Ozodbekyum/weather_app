import 'package:flutter/material.dart';

class DayToNight extends StatelessWidget {
  final String img;
  final String sunTime;
  final String time;
  final Color colr;
  const DayToNight({
    super.key,
    required this.img,
    required this.sunTime,
    required this.time,
    required this.colr,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 132,
          width: 141,
          decoration: BoxDecoration(
            // image: DecorationImage(image: AssetImage(img)),
            color: colr,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(img),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  sunTime,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                time,
                style: TextStyle(color: Colors.white, fontSize: 11),
              )
            ],
          ),
        )
      ],
    );
  }
}

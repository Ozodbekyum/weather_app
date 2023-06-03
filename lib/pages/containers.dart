import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String daysName;
  final String waterPercent;
  final String dailyDegree;
  const MyContainer({
    required this.daysName,
    required this.waterPercent,
    required this.dailyDegree,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: Container(
        height: 45,
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
              ),
              child: Text(
                daysName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Image.asset(
                'lib/img/Vector.png',
                height: 20,
                width: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Image.asset(
                'lib/img/Vector.png',
                height: 20,
                width: 20,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(
                Icons.water_drop_outlined,
                color: Colors.white,
              ),
            ),
            Text(
              waterPercent,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                dailyDegree,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

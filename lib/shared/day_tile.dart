import 'dart:math';

import 'package:advent_of_code_2021/days/one.dart';
import 'package:advent_of_code_2021/shared/day.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DayTile extends StatelessWidget {
  final Day day;

  const DayTile({
    required this.day,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const One()),
        );
      },
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  day.checked ? Icons.star : Icons.star_border,
                  color: day.checked
                      ? day.checkedSecond
                          ? Colors.yellow
                          : Colors.grey
                      : null,
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Day ${day.number}",
                ),
              ),
            ),
          ],
        ),
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      ),
    );
  }
}

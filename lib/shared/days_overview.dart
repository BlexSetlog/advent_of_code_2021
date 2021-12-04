import 'dart:math';

import 'package:advent_of_code_2021/shared/day.dart';
import 'package:advent_of_code_2021/shared/day_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'days_list.dart';

class DaysOverview extends StatelessWidget {
  final DaysList daysList = DaysList();

  DaysOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: daysList.days
          .map(
            (day) => DayTile(day: day),
          )
          .toList(),
    );
  }
}

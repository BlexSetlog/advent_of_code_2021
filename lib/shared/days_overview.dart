import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DaysOverview extends StatelessWidget {
  final List<int> days = Iterable<int>.generate(24).toList();

  DaysOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: days
          .map(
            (e) => Container(
                child: Center(
                  child: Text(
                    "Day ${e + 1}",
                  ),
                ),
                color: Colors
                    .primaries[Random().nextInt(Colors.primaries.length)]),
          )
          .toList(),
    );
  }
}

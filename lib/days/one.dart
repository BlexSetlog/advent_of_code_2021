import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class One extends StatelessWidget {
  One({Key? key}) : super(key: key);

  final Future<String> loadAsset =
      rootBundle.loadString('assets/day1/1.txt');

  int getFirstResult(List<String> input) {
    int counter = 0;
    for (var i = 1; i < input.length; i++) {
      if (int.parse(input[i]) > int.parse(input[i - 1])) {
        counter++;
      }
    }

    return counter;
  }

  int getSecondResult(List<String> input) {
    int counter = 0;

    for (var i = 0; i + 3 < input.length; i++) {
      int firstTripleResult = int.parse(input[i]) +
          int.parse(input[i + 1]) +
          int.parse(input[i + 2]);
      int secondTripleResult = int.parse(input[i + 1]) +
          int.parse(input[i + 2]) +
          int.parse(input[i + 3]);
      if (secondTripleResult > firstTripleResult) {
        counter++;
      }
    }

    return counter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day One"),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: loadAsset,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              List<String> splitted = snapshot.data!.split('\n');
              return Center(
                child: Column(
                  children: [
                    Text("First result: ${getFirstResult(splitted)}"),
                    Text("Second result: ${getSecondResult(splitted)}"),
                  ],
                ),
              );
            } else {
              return const Text("Failed to load Data!");
            }
          },
        ),
      ),
    );
  }
}

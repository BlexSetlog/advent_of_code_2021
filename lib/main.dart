import 'package:advent_of_code_2021/shared/days_overview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advent of Code',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Advent of Code Day Overview'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Future<String> loadAsset() async {
  //   return await rootBundle.loadString('assets/day1/1.txt');
  // }

  @override
  Widget build(BuildContext context) {
    // loadAsset().then((res) {
    //   List<String> x = res.split("\n");
    //   num counter = 0;
    //   for(var i = 0; i < x.length; i++){

    //   }
    //   print(counter);
    // });
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: DaysOverview(),
      ),
    );
  }
}

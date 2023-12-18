import 'package:dicoding_flutter2/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "set 1 2 3",
      theme: ThemeData(fontFamily: 'Oswald'),
      home: MainScreen(),
      // home: const DetailScreen(),
      // home: const DetailPage(),
    );
  }
}

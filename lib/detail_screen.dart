import 'package:flutter/material.dart';
// import 'package:dicoding_flutter2/detail_screen.dart;


class DetailScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/farm-house.jpg'),
            Container(),
            Container(),
            Container(),
          ],
        )
      )
    );
  }
}
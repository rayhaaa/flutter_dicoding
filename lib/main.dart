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
      home: const MainScreen(),
      // home: const DetailScreen(),
      // home: const DetailPage(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
                child: 
                Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset('images/farm-house.jpg'),
        Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: const Text(
            "blablabla yadayada",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16.0),
          child: const Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text("every yay"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.access_time),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text("12.00 - 21.00"),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.monetization_on),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text("IDR75k"),
                  ],
                ),
              ],
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: 
          const Text("lorem ipsum in copacabana men sana in corporesano", 
          textAlign: TextAlign.center,),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          height: 150,
          child: 
            ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(4.0),
                child: 
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: 
                Image.network("https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg"),
                )
                ),
                Padding(padding: const EdgeInsets.all(4.0),
                child: 
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: 
                Image.network("https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg"),
                )
                ), 
                Padding(padding: const EdgeInsets.all(4.0),
                child: 
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child:
                Image.network("https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg"),
                )
                )
              ],
            )
        )
      ],
    )));
  }
}

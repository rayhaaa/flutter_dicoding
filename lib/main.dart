import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "set 1 2 3",
      theme: ThemeData(fontFamily: 'Oswald'),
      home: const DetailScreen(),
      // home: const DetailPage(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: 
            SingleChildScrollView(
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
          margin: const EdgeInsets.only(top: 15.0),
          child: const Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
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
          const Text("lorem ipsum copacabana men sana in corporesano", 
          textAlign: TextAlign.center,),
        ),
        Image.network("https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg")
      ],
    ))));
  }
}

// class DetailPage extends StatefulWidget {
//   const DetailPage({Key? key}) : super(key: key);

//   @override
//   State<DetailPage> createState() => _DetailPageState();
// }

// class _DetailPageState extends State<DetailPage> {
//   String? pilih;
//   bool lightOn = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: <Widget>[
//           const Padding(padding: EdgeInsets.all(25.0)),
//           Expanded(
//             child: Container(
//                 margin: const EdgeInsets.all(25.0),
//                 height: 150.0,
//                 width: 350.0,
//                 decoration: const BoxDecoration(
//                     color: Colors.black54, shape: BoxShape.rectangle),
//                 child: Column(
//                   children: <Widget>[
//                     Expanded(
//                       child: Container(
//                           height: 150.0,
//                           width: 350.0,
//                           decoration: const BoxDecoration(
//                               color: Colors.orangeAccent,
//                               shape: BoxShape.rectangle),
//                           child: const Row(children: <Widget>[
//                             // Text(
//                             //   "acccc",
//                             //   // textAlign: TextAlign.center,
//                             // ),
//                             // Text(
//                             //   "bcccc",
//                             //   // textAlign: TextAlign.center,
//                             // )
//                           ])),
//                     ),
//                     // const Text("ccccc"),
//                     Expanded(
//                       child: DropdownButton<String>(
//                           items: const <DropdownMenuItem<String>>[
//                             DropdownMenuItem<String>(
//                               value: "kepiting asam manis",
//                               child: Text("kepiting asam manis"),
//                             ),
//                             DropdownMenuItem<String>(
//                               value: "kwetiau goreng",
//                               child: Text("kwetiau goreng"),
//                             ),
//                             DropdownMenuItem<String>(
//                               value: "nila bakar",
//                               child: Text("nila bakar"),
//                             ),
//                             DropdownMenuItem<String>(
//                               value: "nasi goreng",
//                               child: Text("nasi goreng"),
//                             ),
//                           ],
//                           value: pilih,
//                           hint: const Text("apa aja"),
//                           onChanged: (String? value) {
//                             setState(
//                               () {
//                                 pilih = value;
//                               },
//                             );
//                           }),
//                     )
//                   ],
//                 )),
//           ),
//           Expanded(
//             child: Switch(
//                 value: lightOn,
//                 onChanged: (bool value) {
//                   setState(() {
//                     lightOn = value;
//                   });
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                       content: Text( lightOn ? 'light is on' : 'light is off'),
//                       duration: const Duration(seconds: 1),
//                     ));
//                 }),
//           )
//           // const Text("dcccc"),
//         ],
//       ),
//     );
//   }
// }

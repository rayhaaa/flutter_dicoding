// import 'package:dicoding_flutter2/main.dart';
// import 'package:flutter/material.dart';
// import 'package:dicoding_flutter2/model/heal_place.dart';

// class MainScreen2 extends StatelessWidget {
//   const MainScreen2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("BDG")),
//         body: ListView.builder(
//           itemBuilder: (context, index) {
//             final HealPlace place = healPlaceList[index];

//             InkWell(

//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) {
//                     return DetailScreen();
//                   }));
//                 },
//                 // child: Card(
//                 //   child: Row(
//                 //     mainAxisAlignment: MainAxisAlignment.start,
//                 //     children: <Widget>[
//                 //       Expanded(
//                 //         flex: 1,
//                 //         child: Image.asset('images/farm-house.jpg'),
//                 //       ),
//                 //       const Expanded(
//                 //           flex: 2,
//                 //           child: Padding(
//                 //             padding: EdgeInsets.all(8.0),
//                 //             child: Column(
//                 //               crossAxisAlignment: CrossAxisAlignment.start,
//                 //               mainAxisSize: MainAxisSize.min,
//                 //               children: <Widget>[
//                 //                 Text(
//                 //                   'Farm House Lembang',
//                 //                   style: TextStyle(fontSize: 16.0),
//                 //                 ),
//                 //                 SizedBox(height: 10),
//                 //                 Text('Lembang'),
//                 //               ],
//                 //             ),
//                 //           ))
//                 //     ],
//                 //   ),
//                 // )
//                 );
//           },
//         ));
//   }
// }


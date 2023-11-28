import 'package:flutter/material.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String? pilih;
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(25.0)),
          Expanded(
            child: Container(
                margin: const EdgeInsets.all(25.0),
                height: 150.0,
                width: 350.0,
                decoration: const BoxDecoration(
                    color: Colors.black54, shape: BoxShape.rectangle),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          height: 150.0,
                          width: 350.0,
                          decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.rectangle),
                          child: const Row(children: <Widget>[
                            // Text(
                            //   "acccc",
                            //   // textAlign: TextAlign.center,
                            // ),
                            // Text(
                            //   "bcccc",
                            //   // textAlign: TextAlign.center,
                            // )
                          ])),
                    ),
                    // const Text("ccccc"),
                    Expanded(
                      child: DropdownButton<String>(
                          items: const <DropdownMenuItem<String>>[
                            DropdownMenuItem<String>(
                              value: "kepiting asam manis",
                              child: Text("kepiting asam manis"),
                            ),
                            DropdownMenuItem<String>(
                              value: "kwetiau goreng",
                              child: Text("kwetiau goreng"),
                            ),
                            DropdownMenuItem<String>(
                              value: "nila bakar",
                              child: Text("nila bakar"),
                            ),
                            DropdownMenuItem<String>(
                              value: "nasi goreng",
                              child: Text("nasi goreng"),
                            ),
                          ],
                          value: pilih,
                          hint: const Text("apa aja"),
                          onChanged: (String? value) {
                            setState(
                              () {
                                pilih = value;
                              },
                            );
                          }),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Switch(
                value: lightOn,
                onChanged: (bool value) {
                  setState(() {
                    lightOn = value;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text( lightOn ? 'light is on' : 'light is off'),
                      duration: const Duration(seconds: 1),
                    ));
                }),
          )
          // const Text("dcccc"),
        ],
      ),
    );
  }
}


// import 'package:dicoding_flutter2/detail_screen.dart;


// class DetailScreen extends StatelessWidget {
//   @override 
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Image.asset('images/farm-house.jpg'),
//             Container(),
//             Container(),
//             Container(),
//           ],
//         )
//       )
//     );
//   }
// }
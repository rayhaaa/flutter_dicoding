import 'package:dicoding_flutter2/model/heal_place.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_flutter2/detail_screen.dart';
 
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        // const Text('Wisata Bandung'),
        Text('Wisata Bandung. Size: ${MediaQuery.of(context).size.width}'),
      ),
      body: const HealPlaceList(),
    );
  }
}

class HealPlaceGrid extends StatelessWidget {
  const HealPlaceGrid({Key ? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: 4,
        children: [],
      ),
    );
  }
}

class HealPlaceList extends StatelessWidget {
  const HealPlaceList({Key ? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          final HealPlace place = healPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(place.location),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: healPlaceList.length,
      );
  }
}
import 'package:flutter/material.dart';
import 'package:praktikum_3/model/culinary.dart';
import 'package:praktikum_3/detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Culinary'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Culinary food = culinaryList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(food: food);
              }));
            },
            child: listItem(food),
          );
        },
        itemCount: culinaryList.length,
      ),
    );
  }

  Widget listItem(Culinary food) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(food.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    food.name,
                    style: const TextStyle(fontSize: 16.0, fontFamily: 'Poppins'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Tap for more info!', style: const TextStyle(fontSize: 16.0, fontFamily: 'Poppins'),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

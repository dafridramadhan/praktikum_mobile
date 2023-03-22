import 'package:flutter/material.dart';
// import 'package:praktikum_4/main_screen.dart';
// import 'package:praktikum_4/detail_screen.dart';
import 'package:praktikum_4/models/culinary.dart';

class DoneCulinaryList extends StatelessWidget {
  final List<Culinary> doneCulinaryList;
  const DoneCulinaryList({
    Key? key,
    required this.doneCulinaryList
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuliner Telah Dikunjungi'),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            final Culinary food = doneCulinaryList[index];
            return Card(
              color: Colors.white60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget> [
                  Expanded(
                    child: Image.asset(
                      food.imageAsset,
                      width: 100,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
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
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Icon(Icons.done_outline)
                ],
              ),
            );
          },
          itemCount: doneCulinaryList.length,
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Kuliner yang telah dikunjungi'),
    //   ),
    //   body: ListView.builder(
    //     itemBuilder: (context, index) {
    //       final Culinary food = doneCulinaryList[index];
    //       return Card(
    //         color: Colors.white60,
    //         child: Row(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: <Widget>[
    //             Text(
    //               food.name,
    //               style: const TextStyle(fontSize: 16.0, fontFamily: 'Poppins'),
    //             ),
    //             const Icon(Icons.done_outline),
    //           ],
    //         ),
    //       );
    //     },
    //     itemCount: doneCulinaryList.length,
    //   ),
    // );
  }
}
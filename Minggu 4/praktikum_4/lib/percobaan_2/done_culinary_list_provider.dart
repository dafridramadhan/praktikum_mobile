import 'package:flutter/material.dart';
import 'package:praktikum_4/provider/done_culinary_provider.dart';
import 'package:provider/provider.dart';
// import 'package:praktikum_4/main_screen.dart';
// import 'package:praktikum_4/detail_screen.dart';
import 'package:praktikum_4/models/culinary.dart';

class DoneCulinaryListProvider extends StatelessWidget {
  const DoneCulinaryListProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Culinary> doneCulinaryListProvider = 
        Provider.of<DoneCulinaryProvider> (
            context,
            listen: false,
      ).doneCulinaryListProvider;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuliner yang telah dikunjungi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Culinary food = doneCulinaryListProvider[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  food.name,
                  style: const TextStyle(fontSize: 16.0, fontFamily: 'Poppins'),
                ),
                const Icon(Icons.done_outline),
              ],
            ),
          );
        },
        itemCount: doneCulinaryListProvider.length,
      ),
    );
  }
}
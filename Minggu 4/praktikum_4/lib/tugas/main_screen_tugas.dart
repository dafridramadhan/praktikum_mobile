import 'package:flutter/material.dart';
import 'package:praktikum_4/tugas/done_culinary_list_tugas.dart';
import 'package:praktikum_4/percobaan_1/list_item.dart';
import 'package:praktikum_4/models/culinary.dart';
import 'package:praktikum_4/percobaan_2/done_culinary_list_provider.dart';
import 'package:praktikum_4/percobaan_1/detail_screen.dart';
import 'package:praktikum_4/tugas/done_culinary_list_tugas.dart';
import 'package:praktikum_4/percobaan_1/done_culinary_list.dart';

class MainScreenTugas extends StatefulWidget {
  const MainScreenTugas({super.key});

  @override
  State<MainScreenTugas> createState() => _MainScreenTugasState();
}

class _MainScreenTugasState extends State<MainScreenTugas> {
  final List<Culinary> culinaryList = [
    Culinary(
      name: 'Indonesian Culinary',
      imageAsset: 'assets/images/indonesia.png',
      day: 'Every Day',
      time: '10 PM - 10 AM',
      price: 'Rp. 30.000',
      description:
          'Kami menjual beraneka ragam makanan Indonesia yang sangat berkualitas, kami buka setiap hari dan harga yang kami beri adalah yang terbaik.',
      galeri: [
        'assets/images/cotoMakassar.jpg',
        'assets/images/nasiGoreng.png',
        'assets/images/rawon.png',
        'assets/images/rendang.png',
        'assets/images/rujakCingur.jpeg',
        'assets/images/soto.jpg'
      ],
    ),
    Culinary(
      name: 'Japan Culinary',
      imageAsset: 'assets/images/japan.png',
      day: 'Every Day',
      time: '10 PM - 10 AM',
      price: 'Rp. 30.000',
      description:
          'Kami menjual beraneka ragam makanan Japan yang sangat berkualitas, kami buka setiap hari dan harga yang kami beri adalah yang terbaik.',
      galeri: [
        'assets/images/cotoMakassar.jpg',
        'assets/images/nasiGoreng.png',
        'assets/images/rawon.png',
        'assets/images/rendang.png',
        'assets/images/rujakCingur.jpeg',
        'assets/images/soto.jpg'
      ],
    ),
    Culinary(
      name: 'Thailand Culinary',
      imageAsset: 'assets/images/thailand.png',
      day: 'Every Day',
      time: '10 PM - 10 AM',
      price: 'Rp. 30.000',
      description:
          'Kami menjual beraneka ragam makanan Thailand yang sangat berkualitas, kami buka setiap hari dan harga yang kami beri adalah yang terbaik.',
      galeri: [
        'assets/images/cotoMakassar.jpg',
        'assets/images/nasiGoreng.png',
        'assets/images/rawon.png',
        'assets/images/rendang.png',
        'assets/images/rujakCingur.jpeg',
        'assets/images/soto.jpg'
      ],
    ),
    Culinary(
      name: 'Malaysia Culinary',
      imageAsset: 'assets/images/malaysia.png',
      day: 'Every Day',
      time: '10 PM - 10 AM',
      price: 'Rp. 30.000',
      description:
          'Kami menjual beraneka ragam makanan Malaysia yang sangat berkualitas, kami buka setiap hari dan harga yang kami beri adalah yang terbaik.',
      galeri: [
        'assets/images/cotoMakassar.jpg',
        'assets/images/nasiGoreng.png',
        'assets/images/rawon.png',
        'assets/images/rendang.png',
        'assets/images/rujakCingur.jpeg',
        'assets/images/soto.jpg'
      ],
    ),
    Culinary(
      name: 'North Korea Culinary',
      imageAsset: 'assets/images/korsel.png',
      day: 'Every Day',
      time: '10 PM - 10 AM',
      price: 'Rp. 30.000',
      description:
          'Kami menjual beraneka ragam makanan Korea Selatan yang sangat berkualitas, kami buka setiap hari dan harga yang kami beri adalah yang terbaik.',
      galeri: [
        'assets/images/cotoMakassar.jpg',
        'assets/images/nasiGoreng.png',
        'assets/images/rawon.png',
        'assets/images/rendang.png',
        'assets/images/rujakCingur.jpeg',
        'assets/images/soto.jpg'
      ],
    ),
    Culinary(
      name: 'Germany Culinary',
      imageAsset: 'assets/images/jerman.png',
      day: 'Every Day',
      time: '10 PM - 10 AM',
      price: 'Rp. 30.000',
      description:
          'Kami menjual beraneka ragam makanan Jerman yang sangat berkualitas, kami buka setiap hari dan harga yang kami beri adalah yang terbaik.',
      galeri: [
        'assets/images/cotoMakassar.jpg',
        'assets/images/nasiGoreng.png',
        'assets/images/rawon.png',
        'assets/images/rendang.png',
        'assets/images/rujakCingur.jpeg',
        'assets/images/soto.jpg'
      ],
    ),
    Culinary(
      name: 'Netherlands Culinary',
      imageAsset: 'assets/images/belanda.png',
      day: 'Every Day',
      time: '10 PM - 10 AM',
      price: 'Rp. 30.000',
      description:
          'Kami menjual beraneka ragam makanan Belanda yang sangat berkualitas, kami buka setiap hari dan harga yang kami beri adalah yang terbaik.',
      galeri: [
        'assets/images/cotoMakassar.jpg',
        'assets/images/nasiGoreng.png',
        'assets/images/rawon.png',
        'assets/images/rendang.png',
        'assets/images/rujakCingur.jpeg',
        'assets/images/soto.jpg'
      ],
    ),
  ];
  final List<Culinary> doneCulinaryListTugas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Culinary'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DoneCulinaryList(doneCulinaryList: doneCulinaryListTugas);
                }),
              );
            },
          ),
        ],
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
            child: ListItem(
                food: food,
                isDone: doneCulinaryListTugas.contains(food),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? doneCulinaryListTugas.add(food)
                          : doneCulinaryListTugas.remove(food);
                    }
                  });
                }),
          );
        },
        itemCount: culinaryList.length,
      ),
    );
  }

  // Widget listItem(Culinary food) {
  //   return Card(
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Expanded(
  //           flex: 1,
  //           child: Image.asset(food.imageAsset),
  //         ),
  //         Expanded(
  //           flex: 2,
  //           child: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               mainAxisSize: MainAxisSize.min,
  //               children: <Widget>[
  //                 Text(
  //                   food.name,
  //                   style:
  //                       const TextStyle(fontSize: 16.0, fontFamily: 'Poppins'),
  //                 ),
  //                 SizedBox(
  //                   height: 20,
  //                 ),
  //                 Text(
  //                   'Tap for more info!',
  //                   style:
  //                       const TextStyle(fontSize: 16.0, fontFamily: 'Poppins'),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

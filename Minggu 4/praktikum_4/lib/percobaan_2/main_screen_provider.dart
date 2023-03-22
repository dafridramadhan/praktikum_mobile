import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:praktikum_4/models/culinary.dart';
import 'package:praktikum_4/percobaan_1/done_culinary_list.dart';
import 'package:praktikum_4/percobaan_2/done_culinary_list_provider.dart';
import 'package:praktikum_4/percobaan_2/detail_screen_provider.dart';
import 'package:praktikum_4/percobaan_2/list_item_provider.dart';
import 'package:praktikum_4/percobaan_2/culinary_list_provider.dart';
import 'package:praktikum_4/provider/done_culinary_provider.dart';

class MainScreenProvider extends StatefulWidget {
  const MainScreenProvider({super.key});

  @override
  State<MainScreenProvider> createState() => _MainScreenProviderState();
}

class _MainScreenProviderState extends State<MainScreenProvider> {
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
  final List<Culinary> doneCulinaryListProvider = [];

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
                  return DoneCulinaryList(doneCulinaryList: doneCulinaryListProvider);
                }),
              );
            },
          ),
        ],
      ),
      // body: CulinaryListProvider(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Culinary food = culinaryList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreenProvider(food: food);
              }));
            },
            child: ListItem(
                food: food,
                isDone: doneCulinaryListProvider.contains(food),
                onCheckboxClick: (bool? value) {
                  setState(() {
                    if (value != null) {
                      value
                          ? doneCulinaryListProvider.add(food)
                          : doneCulinaryListProvider.remove(food);
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

import 'package:flutter/material.dart';
import 'package:praktikum_4/percobaan_1/detail_screen.dart';
import 'package:praktikum_4/models/culinary.dart';
import 'package:praktikum_4/percobaan_1/list_item.dart';

class CulinaryList extends StatefulWidget {
  final List<Culinary> doneCulinaryList;

  const CulinaryList({
    Key? key,
    required this.doneCulinaryList
  }) : super(key: key);
  @override
  _CulinaryListState createState() => _CulinaryListState (doneCulinaryList);
}

class _CulinaryListState extends State<CulinaryList> {
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
  final List<Culinary> doneCulinaryList;

  _CulinaryListState(this.doneCulinaryList);

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
            child: ListItem(
              food: food,
              isDone: doneCulinaryList.contains(food),
              onCheckboxClick: (bool? value) {
                setState(() {
                  if(value != null) {
                    value
                      ? doneCulinaryList.add(food)
                      : doneCulinaryList.remove(food);
                  }
                });
              }
            ),
          );
        },
        itemCount: culinaryList.length,
      ),
    );
  }
}
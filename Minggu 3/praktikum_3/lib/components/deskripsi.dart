import 'package:flutter/material.dart';

class Deskripsi extends StatefulWidget {
  const Deskripsi({super.key});

  @override

  State<Deskripsi> createState() => _DeskripsiState();
}

class _DeskripsiState extends State<Deskripsi> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: const Text (
                "Indonesian Culinary",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ), // Container for title
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Kami menjual beraneka ragam makanan Indonesia, Kami buka setiap hari dan harga yang Kami beri adalah yang terbaik.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ), // Container for icon
          ],
        ),
      ),
    );
  }
}
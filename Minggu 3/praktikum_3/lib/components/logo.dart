import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override

  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
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
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Column(
                    children: const <Widget> [
                      Icon(Icons.calendar_today),
                      Text('Open Everyday'),
                    ],
                  )
                ],
              ),
            ),
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
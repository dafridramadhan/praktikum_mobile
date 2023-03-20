import 'package:flutter/material.dart';

class Judul extends StatefulWidget {
  const Judul({super.key});

  @override

  State<Judul> createState() => _JudulState();
}

class _JudulState extends State<Judul> {
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
            ),
          ],
        ),
      ),
    );
  }
}
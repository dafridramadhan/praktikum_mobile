import 'package:flutter/material.dart';

class Genap extends StatefulWidget {
  const Genap({super.key});

  @override
  State<Genap> createState() => _GenapState();
}

class _GenapState extends State<Genap> {
  int _counter = 0;
  String text = "";
  void genap() {
    setState(() {
        _counter++;
        text = "Genap: ";
        for (int i = 1; i <= _counter; i++) {
          if (i % 2 == 0 && i % 3 == 0) {
            text += i.toString() + ", ";
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Menampilkan bilangan genap yang habis dibagi 3',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: genap,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
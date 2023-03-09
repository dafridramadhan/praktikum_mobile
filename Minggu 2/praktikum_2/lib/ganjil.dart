import 'package:flutter/material.dart';

class Ganjil extends StatefulWidget {
  const Ganjil({super.key});

  @override
  State<Ganjil> createState() => _GanjilState();
}

class _GanjilState extends State<Ganjil> {
  int _counter = 0;
  String text = "";
  void ganjilgenap() {
    setState(() {
        _counter++;
        text = "Ganjil: ";
        for (int i = 0; i <= _counter; i++) {
          if (i % 2 != 0) {
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
          title: const Text('Percobaan'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Menampilkan hanya bilangan ganjil',
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
          onPressed: ganjilgenap,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
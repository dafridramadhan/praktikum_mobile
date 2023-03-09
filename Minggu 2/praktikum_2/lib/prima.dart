import 'package:flutter/material.dart';

class Prima extends StatefulWidget {
  const Prima({super.key});

  @override
  State<Prima> createState() => _PrimaState();
}

class _PrimaState extends State<Prima> {
  int _counter = 0;
  String text = "";
  int count = 0;
  void ganjilgenap() {
    setState(() {
        _counter++;
        text = "Prima: ";
        for (int i = 1; i <= _counter; i++) {
          count = 0;
          for (int j = 1; j <= i; j++) {
            if (i % j == 0) {
              count++;
            }
          }
          if (count == 2) {
            text += "$i, ";
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
          title: const Text('Tugas'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Menampilkan bilangan prima',
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
import 'package:flutter/material.dart';

class Kondisi extends StatefulWidget {
  const Kondisi({super.key});

  @override
  State<Kondisi> createState() => _KondisiState();
}

class _KondisiState extends State<Kondisi> {
  int _counter = 0;
  String text = "";
  void kondisi() {
    setState(() {
        _counter++;
        if(_counter > 10){
          _counter = 1;
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
                'Memberi kondisi agar nilai _counter maksimal di 10',
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
          onPressed: kondisi,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
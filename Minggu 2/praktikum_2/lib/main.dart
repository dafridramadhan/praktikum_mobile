import 'package:flutter/material.dart';
import 'package:praktikum_2/ganjilgenap.dart';
import 'package:praktikum_2/ganjil.dart';
import 'package:praktikum_2/genap.dart';
import 'package:praktikum_2/kondisi.dart';
import 'package:praktikum_2/prima.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pemrograman Mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Praktikum 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Kondisi(),
                    ),
                  );
                },
                child: Text("Percobaan 1 Kondisi"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GanjilGenap(),
                    ),
                  );
                },
                child: Text("Percobaan 2 Ganjil Genap"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Ganjil(),
                    ),
                  );
                },
                child: Text("Percobaan 3 Ganjil"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Genap(),
                    ),
                  );
                },
                child: Text("Latihan Genap"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Prima(),
                    ),
                  );
                },
                child: Text("Tugas Prima"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
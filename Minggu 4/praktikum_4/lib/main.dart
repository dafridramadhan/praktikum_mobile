import 'package:flutter/material.dart';
import 'package:praktikum_4/percobaan_2/main_screen_provider.dart';
import 'package:praktikum_4/tugas/main_screen_tugas.dart';
import 'package:provider/provider.dart';
import 'package:praktikum_4/percobaan_1/main_screen.dart';
import 'package:praktikum_4/provider/done_culinary_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneCulinaryProvider(),
      child: MaterialApp(
        title: 'Pemrograman Mobile',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const MyHomePage(title: 'Praktikum 4'),
      ),
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
                      builder: (context) => const MainScreen(),
                    ),
                  );
                },
                child: Text("Percobaan 1"),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreenProvider(),
                    ),
                  );
                },
                child: Text("Percobaan 2"),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreenTugas(),
                    ),
                  );
                },
                child: Text("Tugas"),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => const Logo(),
              //         ),
              //     );
              //   },
              //   child: Text("Percobaan 3"),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const Gambar(),
              //         ),
              //     );
              //   },
              //   child: Text('Percobaan 4'),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const Font(),
              //         ),
              //     );
              //   },
              //   child: Text('Percobaan 5'),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const Latihan(),
              //         ),
              //     );
              //   },
              //   child: Text('Latihan'),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const Tugas(),
              //         ),
              //     );
              //   },
              //   child: Text('Tugas'),
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const MainScreen(),
              //         ),
              //     );
              //   },
              //   child: Text('Praktikum 3.2'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
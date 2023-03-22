import 'package:flutter/material.dart';
import 'package:praktikum_4/models/culinary.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.food}) : super(key: key);

  final Culinary food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(food.imageAsset),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  food.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Icon(Icons.calendar_today),
                        Text(food.day),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.access_time),
                        Text(food.time),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.attach_money),
                        Text(food.price),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  food.description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        child: Image.asset(
                          food.galeri[index],
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    );
                  },
                  itemCount: food.galeri.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
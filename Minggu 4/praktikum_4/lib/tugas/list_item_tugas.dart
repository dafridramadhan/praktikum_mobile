import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:praktikum_4/models/culinary.dart';

class ListItem extends StatelessWidget {
  final Culinary food;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const ListItem({
    required this.food,
    required this.isDone,
    required this.onCheckboxClick,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(food.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    food.name,
                    style:
                        const TextStyle(fontSize: 16.0, fontFamily: 'Poppins'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Tap for more info!',
                    style:
                        const TextStyle(fontSize: 16.0, fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
          ),
          Checkbox(
            checkColor: Colors.blueAccent,
            value: isDone, 
            onChanged: onCheckboxClick
          ),
        ],
      ),
    );
  }
}
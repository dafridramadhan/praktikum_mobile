import 'package:flutter/foundation.dart';
import 'package:praktikum_4/models/culinary.dart';

class DoneCulinaryProvider extends ChangeNotifier {
  final List<Culinary> _doneCulinaryList = [];

  List<Culinary> get doneCulinaryList => _doneCulinaryList;

  void complete(Culinary food, bool isDone) {
    isDone
        ? _doneCulinaryList.add(food)
        : _doneCulinaryList.remove(food);
    notifyListeners();  
  }
}
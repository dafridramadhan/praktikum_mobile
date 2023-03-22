import 'package:flutter/foundation.dart';
import 'package:praktikum_4/models/culinary.dart';

class DoneCulinaryProvider extends ChangeNotifier {
  final List<Culinary> _doneCulinaryListProvider = [];

  List<Culinary> get doneCulinaryListProvider => _doneCulinaryListProvider;

  void complete(Culinary food, bool isDone) {
    isDone
        ? _doneCulinaryListProvider.add(food)
        : _doneCulinaryListProvider.remove(food);
    notifyListeners();  
  }
}
import 'package:flutter/foundation.dart';

class FavouriteItemProvider with ChangeNotifier{
  final List<int> _selectedItem =[];
  // ignore: recursive_getters
  List<int> get selectedItem => _selectedItem;

  void addItem(int value){
    _selectedItem.add(value);
    notifyListeners();
  }

  void removeItem (int value){
    _selectedItem.remove(value);
    notifyListeners();
  }

}
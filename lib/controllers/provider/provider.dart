import 'package:flutter/cupertino.dart';

import '../Api/ApiController/apiservices.dart';
import '../models/datamodel/models.dart';

class ProductViewModel extends ChangeNotifier {
  List<Product> _products = [];
  bool _isLoading = false;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  void fetchProducts() async {
    _isLoading = true;
    notifyListeners();

    _products = await ApiService().fetchProducts();

    _isLoading = false;
    notifyListeners();
  }
}
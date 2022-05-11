import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_snippet/models/product.dart';

class MockProductService {
  Future<List<Product>> getProducts() async {
    await Future.delayed(
      const Duration(milliseconds: 1000)
    );

    final jsonString = await rootBundle.loadString('assets/sample_data/sample_product.json');
    final Map<String, dynamic> json = jsonDecode(jsonString);

    if(json['products'] != null) {
      final List<Product> products = List.empty(growable: true);

      json['products'].forEach((p) => products.add(Product.fromJson(p)));

      return products;
    }
    
    else {
      return List.empty(growable: true);
    }
  }


}
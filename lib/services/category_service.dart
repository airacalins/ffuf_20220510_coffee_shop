import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_snippet/models/category.dart';

class CategoryService {
  Future<List<Category>> getCategories() async {
    await Future.delayed(
      const Duration(milliseconds: 1000)
    );

    final jsonString = await rootBundle.loadString('assets/sample_data/categories.json');
    final Map<String, dynamic> json = jsonDecode(jsonString);

    if(json['categories'] != null) {
      final List<Category> categories = List.empty(growable: true);

      json['categories'].forEach((c) => categories.add(Category.fromJson(c)));

      return categories;
    }

    else {
      return List.empty(growable: true);
    }
  }
}
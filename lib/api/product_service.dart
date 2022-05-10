// import 'dart:convert';

// import 'package:flutter_snippet/models/product.dart';

// class ProductService {
//   Future<Product> getProducts() async{
//     final products = await _getProducts();

//     return products;
//   }

//   Future<List<Product>> getProducts() async {
//     await Future.delayed(
//       const Duration(milliseconds: 1000)
//     );

//     final dataString = await _loadAsset('assets/sample_data/sample_products.json');

//     final Map<String, dynamic> json = jsonDecode(dataString);

//     if (json['products'] != null) {
//       final products = <Product>[];
//       json['products'].forEach((p) {
//         products.add(Product.fromJson(p));
//       });

//       return products;
//     }

//     else {
//       return List.empty(growable: true);
//     }
//   }
// }
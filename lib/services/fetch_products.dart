import 'dart:convert';

import 'package:ecommerce_app_1/models/product.dart';
import 'package:http/http.dart' as http;

// Fetch products from API
Future<List<Product>> fetchProducts() async {
  const apiUrl = 'https://5f210aa9daa42f001666535e.mockapi.io/api/products';

  final response = await http.get(apiUrl);

  if (response.statusCode == 200) {
    List<Product> products = (json.decode(response.body) as List)
        .map((json) => Product.fromJson(json))
        .toList();

    return products;
  } else {
    throw Exception('Failed to load');
  }
}

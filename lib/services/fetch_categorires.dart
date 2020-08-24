import 'dart:convert';

import 'package:ecommerce_app_1/models/category.dart';
import 'package:http/http.dart' as http;

// Fetch products from API
Future<List<Category>> fetchCategories() async {
  const apiUrl = 'https://5f210aa9daa42f001666535e.mockapi.io/api/categories';

  final response = await http.get(apiUrl);

  if (response.statusCode == 200) {
    List<Category> categories = (json.decode(response.body) as List)
        .map((json) => Category.fromJson(json))
        .toList();

    return categories;
  } else {
    throw Exception('Failed to load');
  }
}

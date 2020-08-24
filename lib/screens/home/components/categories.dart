import 'package:ecommerce_app_1/models/category.dart';
import 'package:ecommerce_app_1/screens/home/components/category_card.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
    @required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}

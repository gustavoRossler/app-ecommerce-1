import 'package:ecommerce_app_1/models/product.dart';
import 'package:ecommerce_app_1/screens/details/details_screen.dart';
import 'package:ecommerce_app_1/screens/home/components/product_card.dart';
import 'package:ecommerce_app_1/size_config.dart';
import 'package:flutter/material.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({
    Key key,
    this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              SizeConfig.orientation == Orientation.portrait ? 2 : 4,
          childAspectRatio: 0.68,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => ProductCard(
          product: products[index],
          onPress: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(
                product: products[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

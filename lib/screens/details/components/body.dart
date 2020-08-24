import 'package:ecommerce_app_1/models/product.dart';
import 'package:ecommerce_app_1/screens/details/components/product_description.dart';
import 'package:ecommerce_app_1/screens/details/components/product_info.dart';
import 'package:ecommerce_app_1/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.screenWidth
            : (SizeConfig.screenHeight - AppBar().preferredSize.height + 70),
        child: Stack(
          children: <Widget>[
            ProductInfo(
              product: product,
            ),
            Positioned(
              top: defaultSize * 37.5,
              left: 0,
              right: 0,
              child: ProductDescription(product: product),
            ),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 7.5,
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  height: defaultSize * 37.8, // 378
                  width: defaultSize * 36.4, // 364
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

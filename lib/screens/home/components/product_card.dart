import 'package:ecommerce_app_1/components/title_text.dart';
import 'package:ecommerce_app_1/constants.dart';
import 'package:ecommerce_app_1/models/product.dart';
import 'package:ecommerce_app_1/size_config.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.product,
    this.onPress,
  }) : super(key: key);

  final Product product;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: defaultSize * 14.5, // 145
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/spinner.gif',
                    image: product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize),
                child: TitleText(
                  title: product.title,
                ),
              ),
              SizedBox(
                height: defaultSize / 2,
              ),
              Text('\$${product.price}'),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerce_app_1/components/title_text.dart';
import 'package:ecommerce_app_1/screens/home/components/categories.dart';
import 'package:ecommerce_app_1/screens/home/components/recommended_products.dart';
import 'package:ecommerce_app_1/services/fetch_categorires.dart';
import 'package:ecommerce_app_1/services/fetch_products.dart';
import 'package:ecommerce_app_1/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), // 20
              child: TitleText(
                title: 'Browse by Categories',
              ),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(categories: snapshot.data)
                  : Center(child: Image.asset('assets/ripple.gif')),
            ),
            Divider(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), // 20
              child: TitleText(
                title: 'Recommends for you',
              ),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) => snapshot.hasData
                  ? RecommendedProducts(
                      products: snapshot.data,
                    )
                  : Center(child: Image.asset('assets/ripple.gif')),
            ),
          ],
        ),
      ),
    );
  }
}

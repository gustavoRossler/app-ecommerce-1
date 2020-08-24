import 'package:ecommerce_app_1/size_config.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize * 1.6, // 16
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

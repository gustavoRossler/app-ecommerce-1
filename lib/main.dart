import 'package:ecommerce_app_1/constants.dart';
import 'package:ecommerce_app_1/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App 1',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // Set DM Sans as default fonts
        // Also apply the app custom text color to all flutter text theme
        textTheme: GoogleFonts.dmSansTextTheme().apply(
          displayColor: kTextColor,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

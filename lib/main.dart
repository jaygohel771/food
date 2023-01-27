import 'package:favor_food/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:food_App_UI/ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
          appBarTheme: AppBarTheme(elevation: 0,),
          iconTheme: IconThemeData(color: Colors.black87),
        // backgroundColor: Colors.black87,
      ),
      home: HomeScreen(),
    );
  }
}
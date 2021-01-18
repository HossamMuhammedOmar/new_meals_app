import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90.0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xffEF8A17),
                  Color(0xffF0DF43),
                ],
              ),
            ),
          ),
          title: Text(
            'Categories',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
        body: CategoriesScreen(),
      ),
    );
  }
}

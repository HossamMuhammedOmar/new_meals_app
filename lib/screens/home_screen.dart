import 'package:flutter/material.dart';

import 'categories_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals App'),
        ),
        body: CategoriesScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: [
        Container(
          color: Colors.blueAccent,
        ),
        Container(
          color: Colors.blueAccent,
        ),
        Container(
          color: Colors.blueAccent,
        ),
        Container(
          color: Colors.blueAccent,
        ),
        Container(
          color: Colors.blueAccent,
        ),
        Container(
          color: Colors.blueAccent,
        ),
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 3/4,
      ),
    );
  }
}

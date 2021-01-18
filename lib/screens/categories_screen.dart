import 'package:flutter/material.dart';
import 'package:meals_app/widgets/categories_widget.dart';

import '../meals_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      physics: BouncingScrollPhysics(),
      children: CATEGORIES_DATA
          .map(
            (category) => CategoriesWidget(
              category.id,
              category.title,
              category.imageUrl,
              category.color1,
              category.color2,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 3 / 3.7,
      ),
    );
  }
}

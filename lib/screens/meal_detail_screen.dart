import 'package:flutter/material.dart';
import 'package:meals_app/meals_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const String routName = 'MealDetailScreen';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final mealDetails =
        MEALS_DATA.where((meal) => meal.id.contains(mealId)).toList();
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 220.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(mealDetails.first.imageUrl),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.srcOver),
              ),
            ),
          ),
          Positioned(
            top: 30.0,
            left: 10.0,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30.0,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pop(context)),
          )
        ],
      ),
    );
  }
}

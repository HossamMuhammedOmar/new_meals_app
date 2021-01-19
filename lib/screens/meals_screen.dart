import 'package:flutter/material.dart';
import 'package:meals_app/meals_data.dart';
import 'package:meals_app/widgets/meal_widget.dart';

class MealsScreen extends StatefulWidget {
  static const String routName = 'MealsScreen';
  @override
  _MealsScreenState createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routArg =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final catId = routArg['id'];
    final catTitle = routArg['title'];
    final color1 = routArg['color1'];
    final color2 = routArg['color2'];
    final mealData =
        MEALS_DATA.where((meal) => meal.categories.contains(catId)).toList();
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
                  color2,
                  color1,
                  // Color(0xFFd68438),
                  // Color(0xFFf1b24b),
                ],
              ),
            ),
          ),
          title: Text(
            '$catTitle Meals',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return MealsWidget(
              mealData[index].imageUrl,
              mealData[index].title,
              mealData[index].duration,
              mealData[index].complexity,
              mealData[index].affordability,
            );
          },
          itemCount: mealData.length,
        ),
      ),
    );
  }
}

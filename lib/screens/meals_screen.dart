import 'package:flutter/material.dart';
import 'package:meals_app/meals_data.dart';

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
                  Color(0xffEF8A17),
                  Color(0xffF0DF43),
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
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(mealData[index].title),
                ],
              ),
            );
          },
          itemCount: mealData.length,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meals_app/screens/meals_screen.dart';

class CategoriesWidget extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final Color color1;
  final Color color2;

  CategoriesWidget(
    this.id,
    this.title,
    this.imageUrl,
    this.color1,
    this.color2,
  );

  _onTapCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      MealsScreen.routName,
      arguments: {
        'id': id,
        'title': title,
        'color1': color1,
        'color2': color2,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue,
      borderRadius: BorderRadius.circular(25.0),
      onTap: () => _onTapCategory(context),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [color1, color2],
          ),
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(1, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150,
              height: 150,
              child: Image(
                image: AssetImage(imageUrl),
                width: 150,
                height: 150,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 21.0,
                // fontFamily: 'YuseiMagic',
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

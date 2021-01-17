import 'package:flutter/cupertino.dart';

class Categories {
  final String id;
  final String title;
  final String imageUrl;
  final Color color;

  const Categories({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.color,
  });
}

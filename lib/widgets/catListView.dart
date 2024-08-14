import 'package:flutter/material.dart';
import 'package:news/models/catogry.dart';
import 'package:news/widgets/cardRow.dart';

class category_list_view extends StatelessWidget {
  category_list_view({
    super.key,
  });

  final List<Catogry> categories = [
    Catogry(image: 'assets/OIP.jpg', name: 'sports'),
    Catogry(image: 'assets/tech.jpg', name: 'technology'),
    Catogry(image: 'assets/OIP.jpg', name: 'health'),
    Catogry(image: 'assets/OIP.jpg', name: 'science'),
    Catogry(image: 'assets/OIP.jpg', name: 'sports'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Cardrow(
            catigory: categories[index],
          );
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

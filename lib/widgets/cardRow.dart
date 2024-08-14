import 'package:flutter/material.dart';
import 'package:news/models/catogry.dart';
import 'package:news/views/category_virew.dart';

class Cardrow extends StatelessWidget {
  const Cardrow({super.key, required this.catigory});
  final Catogry catigory;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CategoryVirew(
                  category: catigory.name,
                );
              },
            ),
          );
        },
        child: Container(
          width: 140,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(catigory.image), fit: BoxFit.fill)),
          child: Center(
            child: Text(
              catigory.name,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

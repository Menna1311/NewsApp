import 'package:flutter/material.dart';
import 'package:news/widgets/newsListViewBuilder.dart';

class CategoryVirew extends StatelessWidget {
  const CategoryVirew({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [NewsListViewBuilder(catigory: category)]));
  }
}

import 'package:flutter/material.dart';
import 'package:news/models/article.dart';
import 'package:news/widgets/newsTile.dart';

class news_list_view extends StatelessWidget {
  final List<Article> articles;
  news_list_view({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Newstile(
              article: articles[index],
            ),
          );
        },
        childCount: articles.length,
      ),
    );
  }
}

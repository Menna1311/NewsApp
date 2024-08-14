import 'package:flutter/material.dart';
import 'package:news/models/article.dart';
import 'package:news/services/news.dart';
import 'package:news/widgets/news_list_view.dart';

// ignore: must_be_immutable
class NewsListViewBuilder extends StatefulWidget {
  NewsListViewBuilder({super.key, required this.catigory});
  final String catigory;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  bool isLoadig = true;
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  void getNews() {
    future = DioServices().getnews(category: widget.catigory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return news_list_view(articles: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return SliverFillRemaining(
              child: Text('oops there is an error'),
            );
          } else
            return SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: CircularProgressIndicator()),
            );
        });
  }
}

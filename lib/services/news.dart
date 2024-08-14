import 'package:dio/dio.dart';
import 'package:news/models/article.dart';

class DioServices {
  final Dio dio = Dio();

  Future<List<Article>> getnews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=269ac4db925d4140860256b36a7b4a90&category=$category');
      print(response.data);
      List<dynamic> articles = response.data['articles'];
      List<Article> articlelist = [];
      for (var article in articles) {
        Article articlemodel = Article(
            image: article['urlToImage'],
            subtitle: article['description'],
            title: article['title']);
        articlelist.add(articlemodel);
      }
      return articlelist;
    } catch (e) {
      return [];
    }
  }
}

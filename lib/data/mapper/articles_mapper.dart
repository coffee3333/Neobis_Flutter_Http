import 'package:neobis_flutter_http/domain/model/article.dart';

mixin ArticlesMapper {
  List<Article> mapData({required List<dynamic> dataList}) {
    List<Article> articles = [];
    for (var element in dataList) {
      final article = Article(
          id: element['id'],
          userId: element['userId'],
          title: element['title'],
          body: element['body']);
      articles.add(article);
    }
    return articles;
  }
}

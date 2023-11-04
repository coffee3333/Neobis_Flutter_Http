import 'package:flutter/material.dart';
import 'package:neobis_flutter_http/data/api/service/typicode_service.dart';
import 'package:neobis_flutter_http/data/mapper/articles_mapper.dart';
import 'package:neobis_flutter_http/domain/model/article.dart';

class ArticlesListProvider extends ChangeNotifier with ArticlesMapper {
  TypicodeService service = TypicodeService();
  List<Article> articlesList = <Article>[];

  int get lengthArticlesList => articlesList.length;

  String getTitle(int index) {
    return articlesList[index].title;
  }

  void updateList() async {
    articlesList = mapData(dataList: await service.getArticles());
    notifyListeners();
  }

  Article getArticle(int index) {
    return articlesList[index];
  }
}

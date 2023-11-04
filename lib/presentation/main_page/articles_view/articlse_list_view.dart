import 'package:flutter/material.dart';
import 'package:neobis_flutter_http/domain/provider/articles_view/articles_list_provider.dart';
import 'package:neobis_flutter_http/presentation/main_page/articles_view/article_container_view.dart';
import 'package:provider/provider.dart';

class ArticleListView extends StatefulWidget {
  const ArticleListView({super.key});

  @override
  State<ArticleListView> createState() => _ArticleListViewState();
}

class _ArticleListViewState extends State<ArticleListView> {
  bool detaiView = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<ArticlesListProvider>(
      builder: (context, articlesListProvider, child) {
        articlesListProvider.updateList();
        return Container(
          child: getArticlesList(articlesListProvider),
        );
      },
    );
  }

  ListView getArticlesList(ArticlesListProvider articlesListProvider) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      itemBuilder: (context, index) {
        return ArticleContainerView(
          article: articlesListProvider.getArticle(index),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemCount: articlesListProvider.lengthArticlesList,
    );
  }
}

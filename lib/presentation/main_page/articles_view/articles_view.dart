import 'package:flutter/material.dart';
import 'package:neobis_flutter_http/domain/provider/articles_view/articles_list_provider.dart';
import 'package:provider/provider.dart';

import 'package:neobis_flutter_http/presentation/main_page/articles_view/articlse_list_view.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ArticlesListProvider(),
      child: const ArticleListView(),
    );
  }
}

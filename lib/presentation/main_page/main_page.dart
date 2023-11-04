import 'package:flutter/material.dart';
import 'package:neobis_flutter_http/data/api/service/typicode_service.dart';
import 'package:neobis_flutter_http/presentation/main_page/articles_view/articles_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final getData = TypicodeService();

    getData.getArticles();
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: const ArticlesView(),
    );
  }
}

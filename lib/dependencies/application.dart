import 'package:flutter/material.dart';
import 'package:neobis_flutter_http/core/consts/routes_consts.dart';
import 'package:neobis_flutter_http/presentation/main_page/main_page.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesConsts.home: (context) => const MainPage(),
      },
      initialRoute: RoutesConsts.home,
    );
  }
}

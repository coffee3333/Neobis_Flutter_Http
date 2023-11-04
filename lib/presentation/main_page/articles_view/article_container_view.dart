import 'package:flutter/material.dart';

import 'package:neobis_flutter_http/domain/model/article.dart';

class ArticleContainerView extends StatefulWidget {
  final Article article;
  const ArticleContainerView({super.key, required this.article});

  @override
  State<ArticleContainerView> createState() => _ArticleContainerViewState();
}

class _ArticleContainerViewState extends State<ArticleContainerView> {
  bool startAnimation = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => startAnimation = !startAnimation),
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        width: 0,
        height: startAnimation ? 105 : 50,
        curve: Curves.easeInOutCubic,
        duration: const Duration(seconds: 1),
        child: _articleContent(),
      ),
    );
  }

  Column _articleContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.article.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        startAnimation
            ? Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.article.body,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    softWrap: false,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}

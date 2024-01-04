import 'package:flutter/material.dart';
import 'package:flutter_news_notif5/common/navigation.dart';
import 'package:flutter_news_notif5/common/styles.dart';
import 'package:flutter_news_notif5/data/model/article.dart';
import 'package:flutter_news_notif5/ui/article_detail_page.dart';

class CardArticle extends StatelessWidget {
  final Article article;

  const CardArticle({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Hero(
          tag: article.urlToImage!,
          child: Image.network(
            article.urlToImage!,
            width: 100,
          ),
        ),
        title: Text(
          article.title,
        ),
        subtitle: Text(article.author ?? ""),
        onTap: () =>
            Navigation.intentWithData(ArticleDetailPage.routeName, article),
      ),
    );
  }
}
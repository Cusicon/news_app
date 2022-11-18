import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import '../widgets/widgets.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  static const routeName = '/article';

  @override
  Widget build(BuildContext context) {
    final Article article =
        ModalRoute.of(context)!.settings.arguments as Article;

    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leadingWidth: 84.0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const RotatedBox(
              quarterTurns: 2,
              child: Icon(
                Icons.arrow_right_alt,
                size: 32.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: ,
      ),
    );
  }
}

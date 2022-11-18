import 'package:flutter/material.dart';
import '../themes/styles.dart';
import 'screens.dart';

import '../models/article_model.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 84.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 32.0,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _NewsOfTheDay(article: article),
          const SizedBox(height: 32.0),
          _BreakingNews(articles: Article.articles)
        ],
      ),
    );
  }
}

class _NewsOfTheDay extends StatelessWidget {
  const _NewsOfTheDay({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: MediaQuery.of(context).size.height * 0.48,
      imageUrl: article.imageUrl,
      width: double.maxFinite,
      padding: const EdgeInsets.all(pagePaddingSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: pagePaddingSize / 2),
              child: Text(
                'News of the day',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          ]),
          const SizedBox(height: maxSizedBox),
          Text(
            article.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Row(
              children: [
                Text(
                  'Learn More',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(width: minSizedBox),
                const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BreakingNews extends StatelessWidget {
  final List<Article> articles;

  const _BreakingNews({
    Key? key,
    required this.articles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: pagePaddingSize),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Breaking News',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'More',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        const SizedBox(height: maxSizedBox),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: articles.length,
            itemBuilder: (context, index) {
              Article currentArticle = articles[index];

              return InkWell(
                onTap: () => Navigator.pushNamed(
                  context,
                  ArticleScreen.routeName,
                  arguments: currentArticle,
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? pagePaddingSize : minPaddingSize,
                    right: articles.length - 1 == index
                        ? pagePaddingSize
                        : minPaddingSize,
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageContainer(
                        width: MediaQuery.of(context).size.width * 0.5,
                        imageUrl: currentArticle.imageUrl,
                      ),
                      const SizedBox(
                        height: minSizedBox,
                      ),
                      Text(
                        currentArticle.title,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: minSizedBox,
                      ),
                      Text(
                        '${DateTime.now().difference(currentArticle.createdAt).inHours} hours ago',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      const SizedBox(
                        height: minSizedBox,
                      ),
                      Text(
                        'By ${currentArticle.author}',
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

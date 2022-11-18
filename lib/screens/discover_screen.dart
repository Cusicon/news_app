import 'package:flutter/material.dart';
import '../models/article_model.dart';

import '../themes/constants.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  static const routeName = '/discover';

  @override
  Widget build(BuildContext context) {
    // Article article = Article.articles[2];
    const List<String> tabs = ['Health', 'Politics', 'Art', 'Food', 'Science'];

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 84.0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 32.0,
              color: Colors.black,
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(index: 1),
        body: ListView(
          padding: const EdgeInsets.all(pagePaddingSize),
          children: const [
            _DiscoverNews(),
            _CategoryNews(tabs: tabs),
          ],
        ),
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  final List<String> tabs;

  const _CategoryNews({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Article> articles = Article.articles;

    return Column(
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            //This is for bottom border that is needed
            border: Border(bottom: BorderSide(color: Colors.black38)),
          ),
          child: TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: tabs
                .map(
                  (tab) => Tab(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        tab,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: tabs
                .map(
                  (tab) => ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      final article = articles[index];

                      return InkWell(
                        onTap: () => Navigator.pushNamed(
                          context,
                          ArticleScreen.routeName,
                          arguments: article,
                        ),
                        child: Container(
                          margin:
                              const EdgeInsets.symmetric(vertical: minSizedBox),
                          child: Row(
                            children: [
                              ImageContainer(
                                width: 80.0,
                                height: 80.0,
                                margin: const EdgeInsets.only(
                                    right: minSizedBox * 1.5),
                                imageUrl: article.imageUrl,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      article.title,
                                      maxLines: 2,
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                    const SizedBox(height: minSizedBox),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.schedule,
                                              size: 16.0,
                                              color: Colors.grey,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 4.0,
                                              ),
                                              child: Text(
                                                '${DateTime.now().difference(article.createdAt).inHours} hours ago',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.remove_red_eye_outlined,
                                              size: 16.0,
                                              color: Colors.grey,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 4.0,
                                              ),
                                              child: Text(
                                                '${article.views} views',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: minSizedBox * 4,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: maxSizedBox),
          Text(
            'Discover',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: minSizedBox,
          ),
          Text(
            'News from all over the world',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: maxSizedBox * 2,
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              hintText: 'Search',
              fillColor: Colors.grey.shade200,
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: const RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.tune, color: Colors.grey),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../themes/styles.dart';

import '../models/article_model.dart';
import '../widgets/widgets.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  static const routeName = '/discover';

  @override
  Widget build(BuildContext context) {
    // Article article = Article.articles[2];

    return Scaffold(
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
        children: [],
      ),
    );
  }
}

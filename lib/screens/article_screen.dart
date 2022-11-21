import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import '../models/article_model.dart';
import '../themes/constants.dart';
import '../widgets/widgets.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  static const routeName = '/article';

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  late PaletteColor paletteColor;

  @override
  void initState() {
    super.initState();
    paletteColor = PaletteColor(Colors.black, 20);
  }

  Future<void> _getPaletteColors(String imagePath) async {
    final PaletteColor palette = await generatePalette(imagePath);

    setState(() {
      paletteColor = palette;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Article article =
        ModalRoute.of(context)!.settings.arguments as Article;

    _getPaletteColors(article.imageUrl);

    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leadingWidth: 84.0,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
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
        body: Stack(
          fit: StackFit.expand,
          children: [
            ImageContainer(
              width: double.infinity,
              imageUrl: article.imageUrl,
            ),
            ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.9),
                    Colors.white.withOpacity(0.0),
                  ],
                  stops: const [0.0, 0.3, 0.9],
                ).createShader(rect);
              },
              blendMode: BlendMode.dstOut,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      paletteColor.color.withOpacity(0.9),
                    ],
                  ),
                ),
              ),
            ),
            ListView(
              children: [
                _NewsHeadline(article: article),
                _NewsBody(paletteColor: paletteColor, article: article),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NewsBody extends StatelessWidget {
  const _NewsBody({
    Key? key,
    required this.paletteColor,
    required this.article,
  }) : super(key: key);

  final PaletteColor paletteColor;
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(pagePaddingSize),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTag(
                backgroundColor: paletteColor.color,
                borderRadius: 48.0,
                children: [
                  CircleAvatar(
                    radius: 16.0,
                    backgroundImage: NetworkImage(article.authorImage),
                    backgroundColor: paletteColor.bodyTextColor,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    article.author,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  const SizedBox(width: 8.0),
                ],
              ),
              Row(
                children: [
                  CustomTag(
                    backgroundColor: Colors.grey.shade200,
                    children: [
                      const Icon(
                        Icons.schedule,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 4.0,
                        ),
                        child: Text(
                          '${DateTime.now().difference(article.createdAt).inHours} h',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: minSizedBox),
                  CustomTag(
                    backgroundColor: Colors.grey.shade200,
                    children: [
                      const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 4.0,
                        ),
                        child: Text(
                          '${article.views}',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: maxSizedBox * 2),
          Text(
            article.title,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: maxSizedBox * 2),
          Text(
            article.body,
            maxLines: 2,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: maxSizedBox * 2),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 2,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.25),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(minPaddingSize),
                child: ImageContainer(
                  width: MediaQuery.of(context).size.width * 0.42,
                  imageUrl: article.imageUrl,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _NewsHeadline extends StatelessWidget {
  final Article article;

  const _NewsHeadline({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(pagePaddingSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.25),
          CustomTag(backgroundColor: Colors.grey.withAlpha(150), children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: pagePaddingSize / 2),
              child: Text(
                article.category,
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
          const SizedBox(height: maxSizedBox),
          Text(
            article.subTitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}

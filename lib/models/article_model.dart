import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subTitle;
  final String body;
  final String author;
  final String authorImage;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.body,
    required this.author,
    required this.authorImage,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  static List<Article> articles = [
    Article(
      id: '1',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 1",
      subTitle: 'subTitle 1',
      body: 'body 1',
      author: 'jah nomad',
      authorImage:
          'https://images.unsplash.com/profile-1667837305419-82b79c69b9f7image?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'category 1',
      imageUrl:
          'https://images.unsplash.com/photo-1668443190429-6e81385791c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
      views: 13513,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 2",
      subTitle: 'subTitle 2',
      body: 'body 2',
      author: 'bernado lorena',
      authorImage:
          'https://images.unsplash.com/profile-1625853416578-8c91dcaab95dimage?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'category 2',
      imageUrl:
          'https://images.unsplash.com/photo-1668524140550-09b80b3cddb1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80',
      views: 2902,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '3',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 3",
      subTitle: 'subTitle 3',
      body: 'body 3',
      author: 'reyk odinson',
      authorImage:
          'https://images.unsplash.com/profile-1662053077262-3de4d5eb8d5cimage?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'category 3',
      imageUrl:
          'https://images.unsplash.com/photo-1667938318975-823e395d74d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80',
      views: 10101,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '4',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 4",
      subTitle: 'subTitle 4',
      body: 'body 4',
      author: 'luca calderone',
      authorImage:
          'https://images.unsplash.com/profile-1634538532762-6a9b5e3f28c8image?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'category 4',
      imageUrl:
          'https://images.unsplash.com/photo-1653979731557-530f259e0c2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      views: 69427,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '5',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 5",
      subTitle: 'subTitle 5',
      body: 'body 5',
      author: 'liubov ilchuk',
      authorImage:
          'https://images.unsplash.com/profile-1561485840914-ab50f63bc929?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'category 5',
      imageUrl:
          'https://images.unsplash.com/photo-1560879164-0b1574bb5ad6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      views: 479812,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subTitle,
        body,
        author,
        authorImage,
        category,
        imageUrl,
        views,
        createdAt,
      ];
}

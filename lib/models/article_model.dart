import 'package:equatable/equatable.dart';
import 'package:string_ext/string_ext.dart';

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

  static String transformString(String str) {
    return str.split(' ').map((str) => str.firstToUpper()).join(' ');
  }

  static List<Article> articles = [
    Article(
      id: '1',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 1",
      subTitle:
          'subTitle 1 subTitle 1 subTitle 1 subTitle 1 subTitle 1 subTitle 1 subTitle 1 subTitle 1',
      body:
          'body 1 body 1 body 1 body 1 body 1 body 1 body 1 body 1 body 1 body 1',
      author: transformString('liubov ilchuk'),
      authorImage:
          'https://images.unsplash.com/profile-1572910425876-25d44d080554image?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'Science',
      imageUrl:
          'https://images.unsplash.com/photo-1668194645738-ef8dbb426086?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      views: 479812,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 2",
      subTitle:
          'subTitle 2 subTitle 2 subTitle 2 subTitle 2 subTitle 2 subTitle 2 subTitle 2 subTitle 2',
      body:
          'body 2 body 2 body 2 body 2 body 2 body 2 body 2 body 2 body 2 body 2',
      author: transformString('jah nomad'),
      authorImage:
          'https://images.unsplash.com/profile-1604499434534-1e0e4cd5b5d2image?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'Health',
      imageUrl:
          'https://images.unsplash.com/photo-1667338614163-6efc1ca91b8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      views: 49003,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '3',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 3",
      subTitle:
          'subTitle 3 subTitle 3 subTitle 3 subTitle 3 subTitle 3 subTitle 3 subTitle 3 subTitle 3',
      body:
          'body 3 body 3 body 3 body 3 body 3 body 3 body 3 body 3 body 3 body 3',
      author: transformString('jah nomad'),
      authorImage:
          'https://images.unsplash.com/profile-1667837305419-82b79c69b9f7image?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'Health',
      imageUrl:
          'https://images.unsplash.com/photo-1668443190429-6e81385791c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
      views: 13513,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '4',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 4",
      subTitle:
          'subTitle 4 subTitle 4 subTitle 4 subTitle 4 subTitle 4 subTitle 4 subTitle 4 subTitle 4',
      body:
          'body 4 body 4 body 4 body 4 body 4 body 4 body 4 body 4 body 4 body 4',
      author: transformString('bernado lorena'),
      authorImage:
          'https://images.unsplash.com/profile-1625853416578-8c91dcaab95dimage?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'Politics',
      imageUrl:
          'https://images.unsplash.com/photo-1668524140550-09b80b3cddb1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80',
      views: 2902,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '5',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 5",
      subTitle:
          'subTitle 5 subTitle 5 subTitle 5 subTitle 5 subTitle 5 subTitle 5 subTitle 5 subTitle 5',
      body:
          'body 5 body 5 body 5 body 5 body 5 body 5 body 5 body 5 body 5 body 5',
      author: transformString('reyk odinson'),
      authorImage:
          'https://images.unsplash.com/profile-1664512708016-de70551f7e77image?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'Art',
      imageUrl:
          'https://images.unsplash.com/photo-1668063497279-7ecb0f0ffa8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      views: 109101,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '6',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 4",
      subTitle:
          'subTitle 6 subTitle 6 subTitle 6 subTitle 6 subTitle 6 subTitle 6 subTitle 6 subTitle 6',
      body:
          'body 6 body 6 body 6 body 6 body 6 body 6 body 6 body 6 body 6 body 6',
      author: transformString('luca calderone'),
      authorImage:
          'https://images.unsplash.com/profile-fb-1616521596-6e3d69a32ddd.jpg?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'Food',
      imageUrl:
          'https://images.unsplash.com/photo-1661621968475-f08ec1a768fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      views: 69427,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '7',
      title:
          "'V.I.P. Immunization' for the Powerful and their Cronies Rattles South America - 7",
      subTitle:
          'subTitle 7 subTitle 7 subTitle 7 subTitle 7 subTitle 7 subTitle 7 subTitle 7 subTitle 7',
      body:
          'body 7 body 7 body 7 body 7 body 7 body 7 body 7 body 7 body 7 body 7',
      author: transformString('liubov ilchuk'),
      authorImage:
          'https://images.unsplash.com/profile-1561485840914-ab50f63bc929?dpr=2&auto=format&fit=crop&w=32&h=32&q=60&crop=faces&bg=fff',
      category: 'Science',
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

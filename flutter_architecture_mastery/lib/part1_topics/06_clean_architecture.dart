/// Lesson 06: Clean Architecture Layer Separation
/// Concept: Decoupling Data Sources -> Repositories -> Use Cases -> Presentation Views.

import 'package:flutter/material.dart';

// --- DATA LAYER ---
class RemoteNewsDataSource {
  Future<List<String>> fetchArticles() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      'Flutter 3.41 Released with Performance Upgrades',
      'Dart 3.11 Adds Advanced Pattern Matching',
      'Clean Architecture Best Practices in Mobile Apps'
    ];
  }
}

abstract class NewsRepository {
  Future<List<String>> getNewsArticles();
}

class NewsRepositoryImpl implements NewsRepository {
  final RemoteNewsDataSource remoteDataSource;
  NewsRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<String>> getNewsArticles() => remoteDataSource.fetchArticles();
}

// --- DOMAIN LAYER ---
class GetNewsArticlesUseCase {
  final NewsRepository repository;
  GetNewsArticlesUseCase(this.repository);

  Future<List<String>> execute() async {
    final articles = await repository.getNewsArticles();
    return articles.map((a) => '📰 $a').toList();
  }
}

// --- PRESENTATION LAYER ---
void main() {
  final dataSource = RemoteNewsDataSource();
  final repository = NewsRepositoryImpl(dataSource);
  final useCase = GetNewsArticlesUseCase(repository);

  runApp(MaterialApp(home: Lesson06Screen(useCase: useCase)));
}

class Lesson06Screen extends StatelessWidget {
  final GetNewsArticlesUseCase useCase;
  const Lesson06Screen({super.key, required this.useCase});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 06: Clean Architecture')),
      body: FutureBuilder<List<String>>(
        future: useCase.execute(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final articles = snapshot.data ?? [];
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(title: Text(articles[index])),
              );
            },
          );
        },
      ),
    );
  }
}

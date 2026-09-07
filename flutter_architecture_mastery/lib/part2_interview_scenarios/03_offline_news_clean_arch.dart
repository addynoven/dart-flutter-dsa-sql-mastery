/// Scenario 03: Offline News Feed with Clean Architecture
/// Problem: Build a news reader using Clean Architecture that falls back to local storage when offline.

import 'package:flutter/material.dart';

class NewsArticle {
  final String title;
  final bool isCached;
  NewsArticle(this.title, this.isCached);
}

abstract class NewsRepository {
  Future<List<NewsArticle>> fetchArticles({required bool isOnline});
}

class NewsRepositoryImpl implements NewsRepository {
  @override
  Future<List<NewsArticle>> fetchArticles({required bool isOnline}) async {
    await Future.delayed(const Duration(milliseconds: 600));
    if (isOnline) {
      return [
        NewsArticle('Live: Flutter 3.41 Released Globally', false),
        NewsArticle('Live: Riverpod 2.5 Gains AsyncNotifier Support', false),
      ];
    } else {
      return [
        NewsArticle('Cached: Offline Article #1', true),
        NewsArticle('Cached: Offline Article #2', true),
      ];
    }
  }
}

void main() {
  runApp(MaterialApp(home: Scenario03Screen(repository: NewsRepositoryImpl())));
}

class Scenario03Screen extends StatefulWidget {
  final NewsRepository repository;
  const Scenario03Screen({super.key, required this.repository});

  @override
  State<Scenario03Screen> createState() => _Scenario03ScreenState();
}

class _Scenario03ScreenState extends State<Scenario03Screen> {
  bool _isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scenario 03: Clean Arch News Feed'),
        actions: [
          Row(
            children: [
              Text(_isOnline ? 'Online' : 'Offline'),
              Switch(
                value: _isOnline,
                onChanged: (val) => setState(() => _isOnline = val),
              )
            ],
          )
        ],
      ),
      body: FutureBuilder<List<NewsArticle>>(
        future: widget.repository.fetchArticles(isOnline: _isOnline),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final articles = snapshot.data ?? [];
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final item = articles[index];
              return ListTile(
                leading: Icon(item.isCached ? Icons.offline_pin : Icons.rss_feed, color: item.isCached ? Colors.orange : Colors.green),
                title: Text(item.title),
                subtitle: Text(item.isCached ? 'Loaded from Local SQLite Cache' : 'Fetched Live from Remote REST API'),
              );
            },
          );
        },
      ),
    );
  }
}

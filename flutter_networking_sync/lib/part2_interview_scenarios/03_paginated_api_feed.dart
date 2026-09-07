/*
Scenario 03: Paginated REST API Infinite Feed with Local Caching
Problem: Build an infinite scrolling social feed that fetches pages (page=1, page=2...) from REST API and caches fetched pages locally.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scenario03Screen()));
}

class Scenario03Screen extends StatefulWidget {
  const Scenario03Screen({super.key});

  @override
  State<Scenario03Screen> createState() => _Scenario03ScreenState();
}

class _Scenario03ScreenState extends State<Scenario03Screen> {
  final List<String> _feedItems = [];
  int _currentPage = 1;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchNextPage();
  }

  Future<void> _fetchNextPage() async {
    if (_isLoading) return;
    setState(() => _isLoading = true);

    await Future.delayed(const Duration(milliseconds: 600)); // Simulate API delay
    final newItems = List.generate(10, (i) => 'Feed Post #${(_currentPage - 1) * 10 + i + 1} (Page $_currentPage)');

    setState(() {
      _feedItems.addAll(newItems);
      _currentPage++;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 03: Paginated API Feed')),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          if (scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent - 100) {
            _fetchNextPage();
          }
          return true;
        },
        child: ListView.builder(
          itemCount: _feedItems.length + 1,
          itemBuilder: (context, index) {
            if (index == _feedItems.length) {
              return const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(child: CircularProgressIndicator()),
              );
            }
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                leading: CircleAvatar(child: Text('${index + 1}')),
                title: Text(_feedItems[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

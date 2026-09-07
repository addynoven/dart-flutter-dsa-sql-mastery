import 'dart:math';

import 'package:flutter/material.dart';

class RandomQuotes {
  final String text;
  final String author;

  RandomQuotes({required this.text, required this.author});
}

final List<RandomQuotes> quotes = [
  RandomQuotes(
    text: "The only way to do great work is to love what you do.",
    author: "Steve Jobs",
  ),
  RandomQuotes(
    text:
        "Success is not the key to happiness. Happiness is the key to success.",
    author: "Albert Schweitzer",
  ),
  RandomQuotes(
    text: "In the middle of every difficulty lies opportunity.",
    author: "Albert Einstein",
  ),
  RandomQuotes(
    text: "It does not matter how slowly you go as long as you do not stop.",
    author: "Confucius",
  ),
  RandomQuotes(
    text: "Believe you can and you're halfway there.",
    author: "Theodore Roosevelt",
  ),
  RandomQuotes(
    text:
        "The future belongs to those who believe in the beauty of their dreams.",
    author: "Eleanor Roosevelt",
  ),
  RandomQuotes(
    text: "Everything you've ever wanted is on the other side of fear.",
    author: "George Addair",
  ),
  RandomQuotes(
    text: "Don't watch the clock; do what it does. Keep going.",
    author: "Sam Levenson",
  ),
  RandomQuotes(
    text: "It always seems impossible until it's done.",
    author: "Nelson Mandela",
  ),
  RandomQuotes(
    text: "Act as if what you do makes a difference. It does.",
    author: "William James",
  ),
  RandomQuotes(
    text: "You miss 100% of the shots you don't take.",
    author: "Wayne Gretzky",
  ),
  RandomQuotes(
    text: "Whether you think you can or you think you can't, you're right.",
    author: "Henry Ford",
  ),
  RandomQuotes(
    text: "Your time is limited, so don't waste it living someone else's life.",
    author: "Steve Jobs",
  ),
  RandomQuotes(text: "Dream big and dare to fail.", author: "Norman Vaughan"),
  RandomQuotes(
    text:
        "What you get by achieving your goals is not as important as what you become by achieving your goals.",
    author: "Zig Ziglar",
  ),
  RandomQuotes(
    text: "Start where you are. Use what you have. Do what you can.",
    author: "Arthur Ashe",
  ),
  RandomQuotes(
    text: "Simplicity is the soul of efficiency.",
    author: "Austin Freeman",
  ),
  RandomQuotes(text: "Make each day your masterpiece.", author: "John Wooden"),
  RandomQuotes(text: "Happiness depends upon ourselves.", author: "Aristotle"),
  RandomQuotes(
    text: "Fall seven times and stand up eight.",
    author: "Japanese Proverb",
  ),
  RandomQuotes(
    text: "Do what you can, with what you have, where you are.",
    author: "Theodore Roosevelt",
  ),
  RandomQuotes(
    text: "The secret of getting ahead is getting started.",
    author: "Mark Twain",
  ),
  RandomQuotes(
    text:
        "Failure is simply the opportunity to begin again, this time more intelligently.",
    author: "Henry Ford",
  ),
  RandomQuotes(
    text: "Opportunities don't happen, you create them.",
    author: "Chris Grosser",
  ),
  RandomQuotes(
    text: "Try not to become a man of success. Rather become a man of value.",
    author: "Albert Einstein",
  ),
];

class RandomQuotesScreen extends StatefulWidget {
  const RandomQuotesScreen({super.key});

  @override
  State<RandomQuotesScreen> createState() => _RandomQuotesScreenState();
}

class _RandomQuotesScreenState extends State<RandomQuotesScreen> {
  late RandomQuotes _currentQuote;

  @override
  void initState() {
    super.initState();
    _currentQuote = quotes[0];
  }

  void _randomQuotes() {
    final randomIndex = Random().nextInt(quotes.length);
    setState(() {
      _currentQuote = quotes[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Quotes')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _currentQuote.text,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              _currentQuote.author,
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(onPressed: _randomQuotes, child: Text('New Quote')),
          ],
        ),
      ),
    );
  }
}

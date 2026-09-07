import 'package:flutter/material.dart';
import 'sql_ui_interactive_container.dart';

// 1. Leaderboard Gamified Screen
class LeaderboardGamifiedScreen extends StatelessWidget {
  const LeaderboardGamifiedScreen({super.key});

  static Future<List<Map<String, dynamic>>> _mockExecute(String sql) async {
    final lower = sql.toLowerCase().replaceAll(RegExp(r'\s+'), ' ');
    final sampleUsers = [
      {'name': 'Alice', 'score': 950},
      {'name': 'Bob', 'score': 820},
      {'name': 'Charlie', 'score': 990},
      {'name': 'Diana', 'score': 880},
    ];

    if (lower.contains('order by score desc')) {
      sampleUsers.sort((a, b) => (b['score'] as int).compareTo(a['score'] as int));
    }
    return sampleUsers;
  }

  @override
  Widget build(BuildContext context) {
    return SqlUiInteractiveContainer(
      scenarioTitle: '🏆 Leaderboard Rankings',
      problemDescription: 'Fix the SQL query to sort top players by score in descending order.',
      initialBuggySql: 'SELECT name, score FROM Users;',
      correctExpectedSqlHint: 'SELECT name, score FROM Users ORDER BY score DESC;',
      solutionValidator: (data) {
        if (data.length < 2) return false;
        return (data[0]['score'] as int) >= (data[1]['score'] as int);
      },
      sqlExecutor: _mockExecute,
      uiBuilder: (data, isCorrect) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final user = data[index];
            final medals = ['🥇 Gold', '🥈 Silver', '🥉 Bronze', '4th'];
            final medalText = isCorrect ? medals[index] : '❓ Unsorted';
            final cardColor = isCorrect
                ? (index == 0 ? Colors.amber.shade100 : index == 1 ? Colors.grey.shade200 : index == 2 ? Colors.orange.shade100 : Colors.white)
                : Colors.red.shade50;

            return Card(
              color: cardColor,
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                leading: Text(medalText, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                title: Text(user['name'] as String, style: const TextStyle(fontWeight: FontWeight.bold)),
                trailing: Text('${user['score']} pts', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
              ),
            );
          },
        );
      },
    );
  }
}

// 2. Product Catalog Gamified Screen
class ProductCatalogGamifiedScreen extends StatelessWidget {
  const ProductCatalogGamifiedScreen({super.key});

  static Future<List<Map<String, dynamic>>> _mockExecute(String sql) async {
    final lower = sql.toLowerCase();
    final allProducts = [
      {'name': 'Flutter Pro Laptop', 'price': 1299, 'in_stock': 1, 'rating': 4.8},
      {'name': 'Broken Headphones', 'price': 19, 'in_stock': 0, 'rating': 1.2},
      {'name': 'OLED Monitor', 'price': 499, 'in_stock': 1, 'rating': 4.5},
      {'name': 'Defective Keyboard', 'price': 29, 'in_stock': 0, 'rating': 2.0},
    ];

    if (lower.contains('in_stock = 1') || lower.contains('in_stock=1')) {
      return allProducts.where((p) => p['in_stock'] == 1).toList();
    }
    return allProducts;
  }

  @override
  Widget build(BuildContext context) {
    return SqlUiInteractiveContainer(
      scenarioTitle: '🛒 Product Catalog Filter',
      problemDescription: 'Filter out out-of-stock and defective items using SQL WHERE in_stock = 1.',
      initialBuggySql: 'SELECT name, price, in_stock FROM Products;',
      correctExpectedSqlHint: 'SELECT name, price, in_stock FROM Products WHERE in_stock = 1;',
      solutionValidator: (data) => data.every((p) => p['in_stock'] == 1),
      sqlExecutor: _mockExecute,
      uiBuilder: (data, isCorrect) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.3),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final p = data[index];
            final inStock = p['in_stock'] == 1;

            return Card(
              color: inStock ? Colors.white : Colors.red.shade100,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(inStock ? Icons.laptop : Icons.error_outline, color: inStock ? Colors.blue : Colors.red, size: 36),
                    const SizedBox(height: 8),
                    Text(p['name'] as String, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text('\$${p['price']}', style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                    if (!inStock)
                      const Chip(label: Text('OUT OF STOCK', style: TextStyle(color: Colors.white, fontSize: 10)), backgroundColor: Colors.red),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

// 3. Customer Orders Gamified Screen
class CustomerOrdersGamifiedScreen extends StatelessWidget {
  const CustomerOrdersGamifiedScreen({super.key});

  static Future<List<Map<String, dynamic>>> _mockExecute(String sql) async {
    final lower = sql.toLowerCase();
    final customers = [
      {'name': 'Alice', 'total_spent': 1450.0},
      {'name': 'Bob', 'total_spent': 890.0},
      {'name': 'Charlie (New Customer)', 'total_spent': 0.0},
    ];

    if (lower.contains('inner join')) {
      // Inner join drops Charlie
      return customers.where((c) => (c['total_spent'] as double) > 0).toList();
    }
    return customers;
  }

  @override
  Widget build(BuildContext context) {
    return SqlUiInteractiveContainer(
      scenarioTitle: '💳 Customer Orders Directory',
      problemDescription: 'Change INNER JOIN to LEFT JOIN so new customers with \$0 orders are not deleted from UI!',
      initialBuggySql: 'SELECT c.name, SUM(o.amount) FROM Customers c INNER JOIN Orders o ON c.id = o.customer_id;',
      correctExpectedSqlHint: 'SELECT c.name, COALESCE(SUM(o.amount), 0) FROM Customers c LEFT JOIN Orders o ON c.id = o.customer_id GROUP BY c.id;',
      solutionValidator: (data) => data.length >= 3,
      sqlExecutor: _mockExecute,
      uiBuilder: (data, isCorrect) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final c = data[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(child: Text(c['name'][0])),
                title: Text(c['name'] as String, style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Total Purchases: \$${c['total_spent']}'),
                trailing: Icon(isCorrect ? Icons.check_circle : Icons.warning, color: isCorrect ? Colors.green : Colors.orange),
              ),
            );
          },
        );
      },
    );
  }
}

// 4. Department Top Earners Gamified Screen
class DepartmentTopEarnersGamifiedScreen extends StatelessWidget {
  const DepartmentTopEarnersGamifiedScreen({super.key});

  static Future<List<Map<String, dynamic>>> _mockExecute(String sql) async {
    final lower = sql.toLowerCase();
    if (lower.contains('dense_rank()') || lower.contains('order by salary desc')) {
      return [
        {'dept': 'Engineering', 'name': 'Alice', 'salary': 150000},
        {'dept': 'Engineering', 'name': 'Bob', 'salary': 140000},
        {'dept': 'Sales', 'name': 'Diana', 'salary': 130000},
      ];
    }
    return [
      {'dept': 'Engineering', 'name': 'Intern Joe', 'salary': 30000},
      {'dept': 'Sales', 'name': 'Trainee Sam', 'salary': 25000},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SqlUiInteractiveContainer(
      scenarioTitle: '🏢 Department Top Earners',
      problemDescription: 'Fix SQL window functions to highlight top earners in each department.',
      initialBuggySql: 'SELECT dept, name, salary FROM Employees;',
      correctExpectedSqlHint: 'SELECT dept, name, salary FROM (SELECT dept, name, salary, DENSE_RANK() OVER (PARTITION BY dept ORDER BY salary DESC) as rnk FROM Employees) WHERE rnk <= 2;',
      solutionValidator: (data) => data.any((e) => (e['salary'] as int) >= 100000),
      sqlExecutor: _mockExecute,
      uiBuilder: (data, isCorrect) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final e = data[index];
            final isHighSalary = (e['salary'] as int) >= 100000;

            return Card(
              color: isHighSalary ? Colors.green.shade50 : Colors.red.shade50,
              child: ListTile(
                leading: Icon(isHighSalary ? Icons.star : Icons.person_outline, color: isHighSalary ? Colors.amber : Colors.grey),
                title: Text('${e['name']} (${e['dept']})', style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Salary: \$${e['salary']}'),
                trailing: Chip(
                  label: Text(isHighSalary ? 'TOP EARNER' : 'INCORRECT'),
                  backgroundColor: isHighSalary ? Colors.green : Colors.red,
                  labelStyle: const TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

// 5. Financial Revenue Analytics Gamified Screen
class FinancialRevenueGamifiedScreen extends StatelessWidget {
  const FinancialRevenueGamifiedScreen({super.key});

  static Future<List<Map<String, dynamic>>> _mockExecute(String sql) async {
    final lower = sql.toLowerCase();
    if (lower.contains('sum') && (lower.contains('case') || lower.contains('-'))) {
      return [
        {'symbol': 'AAPL', 'net_gain': 14500.0},
        {'symbol': 'GOOGL', 'net_gain': 8200.0},
      ];
    }
    return [
      {'symbol': 'AAPL', 'net_gain': -9999.0},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SqlUiInteractiveContainer(
      scenarioTitle: '📊 Financial Revenue Analytics',
      problemDescription: 'Aggregate stock BUY/SELL transactions using SUM(CASE WHEN operation = "SELL" THEN price ELSE -price END).',
      initialBuggySql: 'SELECT symbol, price FROM Stocks;',
      correctExpectedSqlHint: 'SELECT symbol, SUM(CASE WHEN operation = "SELL" THEN price ELSE -price END) as net_gain FROM Stocks GROUP BY symbol;',
      solutionValidator: (data) => data.every((s) => (s['net_gain'] as double) > 0),
      sqlExecutor: _mockExecute,
      uiBuilder: (data, isCorrect) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final s = data[index];
            final gain = s['net_gain'] as double;
            final isPositive = gain > 0;

            return Card(
              color: isPositive ? Colors.green.shade50 : Colors.red.shade50,
              child: ListTile(
                leading: Icon(isPositive ? Icons.trending_up : Icons.trending_down, color: isPositive ? Colors.green : Colors.red, size: 36),
                title: Text(s['symbol'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                subtitle: Text('Net Gain/Loss: \$${gain.toStringAsFixed(2)}'),
                trailing: Text(
                  isPositive ? '+\$${gain.toStringAsFixed(2)}' : '-\$${gain.abs().toStringAsFixed(2)}',
                  style: TextStyle(color: isPositive ? Colors.green : Colors.red, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

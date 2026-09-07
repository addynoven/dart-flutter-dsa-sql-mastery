import 'package:flutter/material.dart';
import 'src/widgets/gamified_sql_scenarios.dart';

class SqlMasteryDashboard extends StatelessWidget {
  const SqlMasteryDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final gamifiedScenarios = [
      _SqlScenarioItem(
        title: '🎮 Scenario 01: Leaderboard Rankings',
        subtitle: 'Fix SQL ORDER BY sorting to assign Gold/Silver/Bronze medals!',
        color: Colors.amber,
        screen: const LeaderboardGamifiedScreen(),
      ),
      _SqlScenarioItem(
        title: '🎮 Scenario 02: E-Commerce Product Catalog',
        subtitle: 'Fix SQL WHERE in_stock = 1 to clear "Out of Stock" error badges!',
        color: Colors.blue,
        screen: const ProductCatalogGamifiedScreen(),
      ),
      _SqlScenarioItem(
        title: '🎮 Scenario 03: Customer Order Directory',
        subtitle: 'Fix SQL LEFT JOIN to prevent \$0 customers from disappearing!',
        color: Colors.green,
        screen: const CustomerOrdersGamifiedScreen(),
      ),
      _SqlScenarioItem(
        title: '🎮 Scenario 04: Department Top Earners',
        subtitle: 'Fix SQL DENSE_RANK() window functions to highlight top salaries!',
        color: Colors.purple,
        screen: const DepartmentTopEarnersGamifiedScreen(),
      ),
      _SqlScenarioItem(
        title: '🎮 Scenario 05: Revenue Analytics Dashboard',
        subtitle: 'Fix SQL SUM(CASE WHEN...) to calculate net profit/loss trend cards!',
        color: Colors.teal,
        screen: const FinancialRevenueGamifiedScreen(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('🗄️ Track 02: Gamified SQL UI Mastery'),
        backgroundColor: Colors.teal.shade100,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: gamifiedScenarios.length,
        itemBuilder: (context, index) {
          final item = gamifiedScenarios[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              leading: CircleAvatar(
                backgroundColor: item.color.withAlpha(50),
                child: Text('${index + 1}', style: TextStyle(color: item.color, fontWeight: FontWeight.bold)),
              ),
              title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(item.subtitle, style: const TextStyle(fontSize: 12)),
              trailing: const Icon(Icons.play_circle_fill, color: Colors.teal),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => item.screen)),
            ),
          );
        },
      ),
    );
  }
}

class _SqlScenarioItem {
  final String title;
  final String subtitle;
  final Color color;
  final Widget screen;

  _SqlScenarioItem({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.screen,
  });
}

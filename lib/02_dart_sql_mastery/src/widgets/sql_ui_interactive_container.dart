import 'package:flutter/material.dart';

class SqlUiInteractiveContainer extends StatefulWidget {
  final String scenarioTitle;
  final String problemDescription;
  final String initialBuggySql;
  final String correctExpectedSqlHint;
  final Widget Function(List<Map<String, dynamic>> data, bool isCorrect) uiBuilder;
  final bool Function(List<Map<String, dynamic>> data) solutionValidator;
  final Future<List<Map<String, dynamic>>> Function(String query) sqlExecutor;

  const SqlUiInteractiveContainer({
    super.key,
    required this.scenarioTitle,
    required this.problemDescription,
    required this.initialBuggySql,
    required this.correctExpectedSqlHint,
    required this.uiBuilder,
    required this.solutionValidator,
    required this.sqlExecutor,
  });

  @override
  State<SqlUiInteractiveContainer> createState() => _SqlUiInteractiveContainerState();
}

class _SqlUiInteractiveContainerState extends State<SqlUiInteractiveContainer> {
  late TextEditingController _sqlController;
  List<Map<String, dynamic>> _currentData = [];
  bool _isSuccess = false;
  String? _errorMessage;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _sqlController = TextEditingController(text: widget.initialBuggySql);
    _runSql();
  }

  Future<void> _runSql() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final results = await widget.sqlExecutor(_sqlController.text);
      final isValid = widget.solutionValidator(results);

      setState(() {
        _currentData = results;
        _isSuccess = isValid;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString().replaceAll('Exception: ', '');
        _isSuccess = false;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.scenarioTitle),
        backgroundColor: _isSuccess ? Colors.green.shade100 : Colors.orange.shade100,
      ),
      body: Column(
        children: [
          // Banner Indicator
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            color: _isSuccess ? Colors.green.shade800 : Colors.orange.shade900,
            child: Row(
              children: [
                Icon(_isSuccess ? Icons.check_circle : Icons.warning_amber, color: Colors.white),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    _isSuccess
                        ? '🎉 Success! Your SQL Query fixed the Flutter UI feature!'
                        : '⚠️ UI Bug Active: Edit & Fix the SQL query below to fix the UI!',
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          // Live UI Rendered Area
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.grey.shade100,
              padding: const EdgeInsets.all(12),
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _errorMessage != null
                      ? Center(
                          child: Card(
                            color: Colors.red.shade50,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('❌ SQL Syntax Error:\n$_errorMessage', style: const TextStyle(color: Colors.red, fontFamily: 'monospace')),
                            ),
                          ),
                        )
                      : widget.uiBuilder(_currentData, _isSuccess),
            ),
          ),

          const Divider(height: 1, thickness: 2),

          // Interactive SQL Editor Area
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.all(12),
              color: Colors.grey.shade900,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('💻 SQL Query Editor (Edit to Fix UI)', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold)),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.play_arrow, size: 18),
                        label: const Text('Run SQL & Update UI'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: _isLoading ? null : _runSql,
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: TextField(
                      controller: _sqlController,
                      maxLines: null,
                      expands: true,
                      style: const TextStyle(color: Colors.greenAccent, fontFamily: 'monospace', fontSize: 14),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.black,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

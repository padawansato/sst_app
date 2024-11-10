import 'package:flutter/material.dart';

void main() {
  runApp(SSTApp());
}

class SSTApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SST App for ADHD & ASD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScenarioSelectionScreen(),
    );
  }
}

class ScenarioSelectionScreen extends StatelessWidget {
  final List<String> scenarios = [
    '友人との会話',
    '職場でのやりとり',
    '公共の場でのコミュニケーション',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('シナリオ選択'),
      ),
      body: ListView.builder(
        itemCount: scenarios.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(scenarios[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InteractionScreen(scenario: scenarios[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class InteractionScreen extends StatelessWidget {
  final String scenario;

  InteractionScreen({required this.scenario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(scenario),
      ),
      body: Center(
        child: Text(
          '$scenario の練習がここに表示されます。',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

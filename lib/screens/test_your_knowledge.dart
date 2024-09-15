import 'package:flutter/material.dart';

class TestYourKnowledgePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Your Knowledge'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        children: [
          _buildCard(context, 'Quiz'),
          _buildCard(context, 'Test'),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        // Add respective navigation logic here
      },
      child: Card(
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AboutConstitutionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Constitution'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        children: [
          _buildCard(context, 'Preamble'),
          _buildCard(context, 'Articles'),
          _buildCard(context, 'Schedules'),
          _buildCard(context, 'Amendments'),
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

import 'package:flutter/material.dart';
import '../widgets/sidebar_menu.dart';
import 'about_constitution.dart';
import 'learning_resources.dart';
import 'gaming_page.dart';
import 'test_your_knowledge.dart';
import 'summaries_page.dart';
import 'daily_news_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Samvidhan Arcade'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: SidebarMenu(),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        children: [
          _buildCard(context, 'About Constitution', AboutConstitutionPage()),
          _buildCard(context, 'Learning Resources', LearningResourcesPage()),
          _buildCard(context, 'Gaming Page', GamingPage()),
          _buildCard(context, 'Test Your Knowledge', TestYourKnowledgePage()),
          _buildCard(context, 'Summaries', SummariesPage()),
          _buildCard(context, 'Daily News', DailyNewsPage()),
        ],
      ),
    );
  }

  Widget _buildCard(BuildContext context, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => page));
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

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 53, 55, 75),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
            'Welcome to My World!'), // Adjust your welcome message here
        centerTitle: true,
        toolbarHeight: 250,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Color.fromARGB(255, 120, 160, 131),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 53, 55, 75),
              Color.fromARGB(255, 33, 34, 50),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 420.0),
              child: _buildWelcomeColumn(),
            ),
            const SizedBox(width: 470),
            _buildSkillsContainer(),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Hello I am Yamlak ',
          style: TextStyle(
            color: Color.fromARGB(255, 120, 160, 131),
            fontSize: 20,
          ),
        ),
        SizedBox(height: 40),
        Image.asset(
          'assets/PP.jpg', // Replace with the actual path to your image
          width: 400,
          height: 400,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildSkillsContainer() {
    return Container(
      width: 500,
      height: 800,
      color: Colors.transparent,
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Skills:',
            style: TextStyle(
              color: Color.fromARGB(255, 120, 160, 131),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          _buildSkillTile(Icons.code, 'Web Development'),
          _buildSkillTile(Icons.chat, 'Telegram bot development'),
          _buildSkillTile(Icons.desktop_windows, 'React'),
          _buildSkillTile(Icons.code, 'HTML5'),
          _buildSkillTile(Icons.style, 'CSS'),
          _buildSkillTile(Icons.code, 'JavaScript'),
          _buildSkillTile(Icons.phone_android, 'Application Development'),
          _buildSkillTile(Icons.widgets, 'Flutter'),
          _buildSkillTile(Icons.group, 'Teamwork'),
          _buildSkillTile(Icons.code, 'Ruby'),
          // Add more skills as needed
        ],
      ),
    );
  }

  Widget _buildSkillTile(IconData icon, String skill) {
    return Column(
      children: [
        ListTile(
          title: Text(
            skill,
            style: TextStyle(
              color: Color.fromARGB(255, 120, 160, 131),
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 5),
      ],
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

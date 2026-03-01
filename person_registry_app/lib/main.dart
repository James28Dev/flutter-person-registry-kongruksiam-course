import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "My title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Home(),
      ),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      padding: const EdgeInsets.all(20),
      child: const Text(
        "JamesDev",
        style: TextStyle(fontSize: 30, letterSpacing: 3),
      ),
    );
  }
}

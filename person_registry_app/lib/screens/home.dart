import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.all(10),
          child: const Text(
            "James",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.all(10),
          child: const Text(
            "James",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.all(10),
          child: const Text(
            "James",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          "https://flutter.dev/assets/icon_flutter.4262c71228b7aa391e995fe5f1d57795.png",
          height: 150,
          width: 150,
        ),
        const SizedBox(height: 30),
        Image.asset("assets/images/pic1.png", width: 150, height: 150),
        const SizedBox(height: 30),
        Image.asset("assets/images/pic2.png", width: 150, height: 150),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Person Registry App",
            style: GoogleFonts.kanit(fontWeight: FontWeight.bold),
          ),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Item(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/person.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange,
          ),
          margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
          padding: EdgeInsets.all(40),
          child: Text(
            data[index].name,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/person.dart';
import 'add_form.dart';
import 'delete_form.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: data[index].job.color,
                ),
                margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data[index].name,
                          style: GoogleFonts.kanit(
                            textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "Age: ${data[index].age} years old, Job: ${data[index].job.title}",
                          style: GoogleFonts.prompt(
                            textStyle: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(data[index].job.image, width: 70, height: 70),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddForm()),
                  );
                },
                icon: const Icon(Icons.add, size: 40, color: Colors.blue),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeleteForm()),
                  );
                },
                icon: const Icon(Icons.remove, size: 40, color: Colors.red),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

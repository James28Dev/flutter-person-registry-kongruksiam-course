import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();

  // ignore: unused_field
  String _name = '';

  // ignore: unused_field
  int _age = 20;
  Job _job = Job.chef;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My title",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Personal information recording form",
            style: GoogleFonts.kanit(fontSize: 20),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsetsGeometry.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text("Name", style: GoogleFonts.kanit(fontSize: 20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name.";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  maxLength: 20,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Age", style: GoogleFonts.kanit(fontSize: 20)),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your age.";
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.parse(value.toString());
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  initialValue: _job,
                  decoration: InputDecoration(
                    label: Text("Job", style: TextStyle(fontSize: 20)),
                  ),
                  items: Job.values.map((key) {
                    return DropdownMenuItem(value: key, child: Text(key.title));
                  }).toList(),
                  onChanged: (values) {
                    setState(() {
                      _job = values!;
                    });
                  },
                ),
                FilledButton(
                  style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    _formKey.currentState!.validate();
                    _formKey.currentState!.save();
                    data.add(Person(name: _name, age: _age, job: _job));
                    _formKey.currentState!.reset();
                  },
                  child: Text("Submit", style: GoogleFonts.kanit(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

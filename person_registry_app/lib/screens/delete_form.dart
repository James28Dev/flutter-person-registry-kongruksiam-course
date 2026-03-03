import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';
import '../models/person.dart';

class DeleteForm extends StatefulWidget {
  const DeleteForm({super.key});

  @override
  State<DeleteForm> createState() => _DeleteFormState();
}

class _DeleteFormState extends State<DeleteForm> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late int _age;
  Job _job = Job.chef;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Personal information remove form",
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
                  style: FilledButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      setState(() {
                        data.removeWhere(
                          (value) =>
                              value.name == _name &&
                              value.age == _age &&
                              value.job == _job,
                        );
                      });

                      _formKey.currentState!.reset();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    }
                  },
                  child: Text(
                    "Delete Data",
                    style: GoogleFonts.kanit(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

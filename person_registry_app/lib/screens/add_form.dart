import 'package:flutter/material.dart';

import '../models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("แบบฟอร์มบันทึกข้อมูล"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsetsGeometry.all(15),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text("ชื่อ", style: TextStyle(fontSize: 20)),
                  ),
                ),
                TextFormField(
                  maxLength: 20,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("อายุ", style: TextStyle(fontSize: 20)),
                  ),
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      label: Text("อาชีพ", style: TextStyle(fontSize: 20)),
                    ), items: Job.values.map((key) {
                  return DropdownMenuItem(
                      value: key,
                      child: Text(key.title)
                  );
                }).toList(),
                    onChanged: (values) {
                      print(values);
                    }
                ),
                FilledButton(
                  style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: Text("บันทึก", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

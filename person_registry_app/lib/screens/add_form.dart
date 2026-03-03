import 'package:flutter/material.dart';

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
                  decoration: InputDecoration(
                    label: Text("ชื่อ", style: TextStyle(fontSize: 20)),
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

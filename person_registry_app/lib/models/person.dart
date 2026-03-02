import 'package:flutter/material.dart';

enum Job {
  chef(title: "Chef", image: "assets/images/pic1.png", color: Colors.red),
  doctor(title: "Doctor", image: "assets/images/pic2.png", color: Colors.blue),
  nurse(title: "Nurse", image: "assets/images/pic3.png", color: Colors.green),
  police(
    title: "Police",
    image: "assets/images/pic4.png",
    color: Colors.yellow,
  ),
  soldier(
    title: "Soldier",
    image: "assets/images/pic5.png",
    color: Colors.indigo,
  );

  const Job({required this.title, required this.image, required this.color});
  final String title;
  final String image;
  final Color color;
}

class Person {
  Person({required this.name, required this.age, required this.job});

  String name;
  int age;
  Job job;
}

List<Person> data = [
  Person(name: "James", age: 22, job: Job.chef),
  Person(name: "Tony", age: 34, job: Job.doctor),
  Person(name: "Ople", age: 21, job: Job.nurse),
  Person(name: "Jojo", age: 27, job: Job.police),
  Person(name: "Yoyo", age: 43, job: Job.soldier),
];

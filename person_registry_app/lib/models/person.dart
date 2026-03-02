class Person {
  Person({required this.name, required this.age, required this.job});

  String name;
  int age;
  String job;
}

List<Person> data = [
  Person(name: "James", age: 22, job: "Chef"),
  Person(name: "Tony", age: 34, job: "Doctor"),
  Person(name: "Ople", age: 21, job: "Nurse"),
  Person(name: "Jojo", age: 27, job: "Police"),
  Person(name: "Yoyo", age: 43, job: "Soldier"),
];

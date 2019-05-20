void main (){
  var person = new Person('Tom', 20, "Male");

}

class Person {
  String name;
  int age;

  final String gender;

  Person(this.name, this.age, this.gender);

  Person.withMap(Map map): gender = map['gender']{
    this.name = map['name'];
    this.age = map['age'];
  }

  Person.withMap2(Map map):name=map['name'], gender = map['gender']{
    this.age = map['age'];
  }

  void work (){
    print("work ...");
  }
}
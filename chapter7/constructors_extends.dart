
void main (){
  var student = new Student("Tom", "Male");
  print(student.name);

} 

class Person {
  String name;

  // Person(){
  //   print("Person ...");
  // }

  Person(this.name);

  Person.withName(this.name);
}

class Student extends Person{
  int age;

  final String gender;

  // Student(String name): super(name);
  Student(String name, String g) : gender=g, super.withName(name);
}
import 'person.dart';

void main (){
  var student = new Student();
  student.study();

  student.name = 'Tom';
  student.age = 16;

  print(student.isAdult);

  student.isAdult;
  student.run();

  Person person2 = new Student();
  if (person2 is Student){
    person2.study();
  }

  print(person2);
}

class Student extends Person{
  void study(){
    print("Person study...");
  }

  @override
  bool get isAdult => age > 15;

  @override
  void run() {
    // TODO: implement run
    print("Student run...");
    
  }
}
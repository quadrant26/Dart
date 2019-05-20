void main () {
  var student = new Student(); 
  student.run();
}

abstract class Person {
  void run ();
}

class Student extends Person{
  @override
  void run() {
    // TODO: implement run
    print("run ....");
  }
}
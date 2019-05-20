void main (){
  const person = const Person("Tom", 20, "Male");
  // person.name = 'Tom';
  // person.age = 20;

  person.work();
}
class Person{
  final String name;
  final int age;
  final String gender;

  /*
  Person(String name, int age){
    this.name = name;
    this.age = age;
  }*/
  const Person(this.name, this.age, this.gender);

  void work(){
    print("Name is $name, Age is $age, He is working,...");
  }

  /** 不能重载
  void work(int a){

  } */
}
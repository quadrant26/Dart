void main (){
  var person = new Person("Tom", 20, "Male");
  // person.name = 'Tom';
  // person.age = 20;

  new Person.withName("John");
  new Person.withAge(20);

  // person.work();
}
class Person{
  String name;
  int age;
  final String gender;

  /*
  Person(String name, int age){
    this.name = name;
    this.age = age;
  }*/
  Person(this.name, this.age, this.gender){
    print(name);
  }

  
  Person.withName(String name){
    this.name = name;
  }

  Person.withAge(this.age);

  void work(){
    print("Name is $name, Age is $age, He is working,...");
  }

  /** 不能重载
  void work(int a){

  } */
}
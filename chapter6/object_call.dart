void main (){
  var person = new Person();
  person.name = 'Tom';
  person.age = 20;

  // person.work();

  person("Test", 30);

}

class Person {
  String name;
  int age;

  // void work(){
  //   print('Name is $name, Age is $age');
  // }

  // 可以使用参数，亦可以不用参数
  void call (String name, int age){
    print("Name is $name, Age is $age");
  }
}
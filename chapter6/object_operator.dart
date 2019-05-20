void main (){
  Person person = new Person();
  person?.name;

  var person2;
  person2 = "";
  person2 = new Person();

  (person2 as Person).work();

  var person3;
  person3 = "";
  if (person3 is Person){
    person3.work();
  }

  /*
  if (person3 is! Person){
    person3.work();
  }*/

  var person4 = new Person();
  person4..name = 'Tom'
         ..age = 30
         ..work();

  new Person()..name = 'John'
              ..age = 20
              ..work();

}

class Person {
  String name;
  int age;

  void work(){
    print('work ...');
  }
}
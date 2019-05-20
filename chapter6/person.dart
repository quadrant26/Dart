
class Person{
  String name;
  int age;
  final String address;

  void work(){
    print("Name is $name, Age is $age, He is working,...");
  }

  /** 不能重载
  void work(int a){

  } */
}
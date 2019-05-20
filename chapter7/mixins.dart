void main () {
  var d = new D(); 
  d.a();
}

class A{
  void a (){
    print("A.a()...");
  }
}

class B{

  void a (){
    print("B.a()...");
  }

  void b (){
    print("B.b()...");
  }
}

class Test {

}

class C{
  void a (){
    print("C.a()...");
  }

  void c (){
    print("C.c()...");
  }
}

// mixins
// mixin 中的继承类不能有继承
class D extends A with B, C{

}

abstract class Engine{
  void work();
}

class OliEngine implements Engine{
  @override
  void work() {
    // TODO: implement work
    print("Work with oil ...");
  }
}

class ElectricEngine implements Engine{
  @override
  void work() {
    // TODO: implement work
    print("Work with Electric...");
  }
}

class Tyre{
  String name;

  void run (){

  }
}

// class Car = Tyre with ElectricEngine;

class Car extends Tyre with ElectricEngine{
  String name;
}

class Bus = Tyre with OliEngine;
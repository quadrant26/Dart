void main(List args){
  print(args);
  print(getPerson("张三", 12));
  printPerson("李斯", 20);
  print(getPerson2("王五", 18));
  print(getPerson3("赵六", 26));
}

String getPerson(String name, int age){
  return "name=$name, age=$age";
}

getPerson2 (name, age) => "name=$name, age=$age";

int gender = 2;

getPerson3 (name, age) => gender == 1 ? "name=$name, age=$age" : "Test";

void printPerson(String name, int age){
  print("name=$name, age=$age");
}
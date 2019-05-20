void main (){
  printPerson("张三");
  printPerson("李四", age: 20);
  printPerson("李四", gender: "Male");
}

printPerson(String name, {int age = 30, String gender}){
  print("name=$name, age=$age, gender=$gender");
}

printPerson2(String name, [int age = 30, String gender]){
  print("name=$name, age=$age, gender=$gender");
}
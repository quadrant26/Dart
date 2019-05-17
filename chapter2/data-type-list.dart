/**
 * 
 */

void main (){
  var list1 = [1,2,3, "Dart", true];
  print(list1);
  print(list1[0]);

  list1[1] = "hello";
  print(list1);

  var list2 = const[1,2,3]; // 不可变

  var list3 = new List();

  var list4 = ["hello", "dart"];
  list4.add("new");
  print(list4);
  
  list4.insert(1, "java");
  print(list4);

  list4.remove("java");
  print(list4);

  print(list4.sublist(2));
}
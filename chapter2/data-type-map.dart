/**
 * 
 */

void main (){
  var map1 = {"a": 1, "b": 2};
  print(map1);

  var map2 = const{"a": 1, "b": 2}; // 不可修改
  print(map2);

  var map3 = new Map();

  var map4 = {"first": "Dart", "second": "java", "third": "python"};
  print(map4.length);

  print(map4.keys);
  print(map4.values);
  print(map4.containsKey("first"));
  print(map4.containsValue("python"));

  print(map4.remove("third"));
  print(map4);

  map4.forEach(f);

  var list = [1,2,3,4];
  print(list.asMap());
}

void f(key, value){
  print("key=$key,value=$value");
}
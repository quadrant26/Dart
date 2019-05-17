/**
 * 
 */

void main (){
  String str1 = 'hello';
  String str2 = """Hello 
    Dart""";

  print(str1);
  print(str2);

  String str3 = 'Hello \n World';
  String str4 = r'Hello \n World';
  print(str3);
  print(str4);

  String str5 = "This is my";
  print(str5 + " Dart");
  print(str5 * 5);
  print(str5 == str4);
  print(str5[0]);

  int a = 1;
  int b = 2;
  print("a + b = ${a + b}");
  print("a = $a");
  
  print(str4.length);
  print(str4.isEmpty);
  print(str4.isNotEmpty);

  print(str5.contains("This"));
  print(str5.substring(0, 5));
  print(str5.startsWith("a"));
  print(str5.endsWith("my"));
  print(str5.indexOf("my"));
  print(str5.lastIndexOf("my"));

  print(str5.split(" "));
  print(str5.replaceAll("my", "fangsi"));
  
}
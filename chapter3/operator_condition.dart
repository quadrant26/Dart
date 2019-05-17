/**
 * 
 */
void main (){
  int gender = 0;
  String str = gender == 0 ? "Male=$gender" : "Female=$gender";
  print(str);

  String a;
  String b = 'Java';
  String c = a ?? b;
  print(c);
}
/**
 * 
 */
void main (){
  int a = 10;
  int b = 4;

  b ??= 10;  // 如果值不为空，则不赋值；为空是，右边赋值给左边
  print(b);

  print(a+=2);
  print(a-=2);
  print(a*=2);
  // print(a/=2); // double
  print(a~/2);
  print(a%=2);
}
void main (){
  var list = new List<String>();
  // list.add(1);
  list.add("1");

  var utils2 = new Utils2<int>();
  utils2.putInt(1);

   var utils3 = new Utils3();
  utils3.putInt<int>(1);
}

class Utils{
  int element;
  String elementStr;

  void putInt(int element){
    this.element = element;
  }

  void putString(String elementStr){
    this.elementStr = elementStr;
  }
}

class Utils2<T>{
  T element;

  void putInt(T element){
    this.element = element;
  }
}

class Utils3{
  void putInt<T>(T element){
    print(element);
  }
}
void main (){
  var rect = new Rectangle();
  rect.height = 20;
  rect.width = 10;
  print(rect.area());
  print(rect.area2);

  rect.area3 = 200;
  print(rect.width);
}

class Rectangle{
  num width, height;

  num area (){
    return width * height;
  }

  num get area2{
    return width * height;
  }

  num get area3 => width * height;
      set area3(value){
        width = value / 20;
      }
}
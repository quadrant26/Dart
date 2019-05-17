/**
 * 
 */
void main (){
  var list = [1,2,3];
  for (var item in list){
    print(item);
  }

  print("------------------------------------");

  for (var item in list){
    if (item == 2){
      break;
    }
    print(item);
  }

  print("------------------------------------");
  for (var item in list){
    if (item == 2){
      continue;
    }
    print(item);
  }

  print("------------------------------------");
  var list2 = [4,5,6];
  for( var item1 in list){
    for(var item2 in list2){
      if(item2 == 5){
        break;
      }
      print(item2);
    }
  }
}
void main (){
  var page = new Page();
  // page.scrollDown();
  Page.scrollDown(); // static 使用
}

class Page {

  static const int maxPage = 10;

  static int currentPage = 1;

  // 下滑
  static void scrollDown(){
    currentPage = 1;
    print("ScrollDown...");
  }

  // 上滑
  void ScrollUp(){
    currentPage ++;
    print("ScrollUp...");
  }
}
//所有不加void的函数默认都有返回值，不写默认为null

void main() {
  sayHello1("david", 20);
//  sayHello1("july", 22,"女");
  var array = [0, 1, 2, 3];
//  array.forEach (printNum);

  //匿名方法    只有（）{}没有方法的名字
  test((param) {
    print(param);
  });

  //is! 不是
  var a = 6;
  print(a is! String);

  // ~/-取整操作，/-除法操作
  int b = 1;
  int c = 2;
  print(b / c);
  print(b ~/ c);
  
  // ??=运算符 如果 ??= 运算符前面的变量为null，则赋值，否则不赋值
  
  var numone = "aaa";
  var numtwo;
  
  numone ??= "bbb";
  numtwo ??= "bbb";
  
  print(numone);
  print(numtwo);
  
}

//匿名方法
test(Function callback) {
  callback("helloworld");
}

//位置参数，可传可不穿，可设置默认值
void sayHello1(String name, int age, [String gender = "男"]) {
  print("name  $name" + "   age---$age" + " gender:  $gender");
}

//函数传给函数做参数
//printNum (int a) {
//  print ("a--->$a");
//}

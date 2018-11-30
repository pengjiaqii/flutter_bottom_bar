void main(){
  //普通构造方法
  var person = new Person("david",20,"男");
  
//  var person2 = person..eat(); ..两个点返回对象本身，类似建造者模式
  person..eat()..sleep()..study()..goHome("david");
  
  List list = new List();
  list.add("aaa");
  list.add("bbb");
  list.add("ccc");
  for (var value in list) {
    print(value);
  }
  
}

class Person{
  String name;
  int age;
  String gender;


//  Person(String name, int age, String gender) {
//    this.name = name;
//    this.age = age;
//    this.gender = gender;
//  }
//  这两个等同，上面的写法类似java，普通构造方法
  Person (this.name, this.age, this.gender);
  
  
//  命名构造方法

  eat(){
    print ('name---$name');
  }
  
  sleep(){
    print ('age---$age');
  }

  study(){
    print ('gender---$gender');
  }
  
  goHome(String name,[String destination = "shenzhen"]){
    print ("$name goto $destination ");
  }
}
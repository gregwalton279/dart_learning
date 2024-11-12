void main(List<String> args) {
  // var p = Person();
  // p.name = "张三";
  // p.age = 18;
  // p.address = "北京市";

  var p = Person()
    ..name = "张三"
    ..age = 18
    ..address = "北京市";
  print(p);
}

class Person {
  late String name;
  late int age;
  late String address;

  // 构造函数
  Person() {
    print("Person()");
  }

  // 命名构造函数
  Person.fromMap(Map map) {
    print("Person.fromMap()");
  }

  // 命名构造函数
  Person.fromJson(String json) {
    print("Person.fromJson()");
  }

  //命名构造函数
}

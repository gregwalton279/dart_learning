void main(List<String> args) {
  // 1. 创建对象
  var p = Person('张三', 18);
  var p2 = Person.withAddress('李四', 19, '北京');

  var p3 = Person.fromMap({'name': '王五', 'age': 20});

  print(p3);

  String a = "aaa";
  a.substring(1);

  // 2. Object 和 dynamic的区别
  // 父类应用指向子类对象
  // Object 和 dynamic
  // Object 是所有类的超类，调用方法时，编译时会报错。
  Object obj = "why";
  // dynamic 是明确声明， var是类型推导
  // dynamic 是动态类型，可以调用任何方法，存在安全隐患。
  // 调用方法时，编译不会报错。
  dynamic dy1 = "why";
  // print(obj.substring(1)); // 报错
  print(dy1.substring(1));
}

class Person {
  String? name;
  int? age;
  String? address;

  // 构造函数
  Person(this.name, this.age);
  // Person(this.name, this.age, {this.address});

  // dart中没有重载
  // 命名构造函数
  Person.withAddress(this.name, this.age, this.address);
  Person.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.age = map['age'];
    this.address = map['address'];
  }
  Person.fromJson(String json) {}

  @override
  String toString() {
    return "$name $age $address";
  }
}

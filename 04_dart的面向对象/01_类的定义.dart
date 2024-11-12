void main(List<String> args) {
  // 默认构造函数
  var p = Person();

  // 命名构造函数,class有命名构造函数会覆盖默认构造函数
  var s1 = Student('张三', 18);
}

class Person {
  String? name;
  int? age;
  String? address;
}

class Student extends Person {
  // 构造函数
  Student(String name, int age) {
    this.name = name;
    this.age = age;
  }
  Student.fromMap(Map map) {}
  Student.fromJson(String json) {}
}

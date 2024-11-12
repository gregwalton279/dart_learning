void main(List<String> args) {
  const p1 = Person('张三', 18);
  const p2 = Person('张三', 18);
  print(identical(p1, p2));
}

class Person {
  final String name;
  final int age;

  // 常量构造函数
  const Person(this.name, this.age);
}

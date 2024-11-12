void main(List<String> args) {
  // 1. 明确的声明
  String name = 'why';

  // 2. 类型推导（var/final/const)
  // 类型推导的方式虽然没有明确的指定变量的类型，但是变量是有自己的明确的类型

  // 2.1 var 声明变量
  var age = 20;

  // 2.2 final声明常量
  final height = 1.88;

  // 2.3 const声明常量
  const address = "广州市";

  // 2.4 final和const的区别
  // const必须赋值 常量值（编译期间需要有一个确定的值）
  // final可以通过计算/函数获取一个值（运行期间来确定一个值）
  // const date1 = DateTime.now();  写法错误
  final date1 = DateTime.now();

  // final用的更多一点

  // p1和p2是不是同一个对象？
  final p1 = Person1("why");
  final p2 = Person1("why");
  print(identical(p1, p2));

  const p3 = Person2("why");
  const p4 = Person2("why");
  const p5 = Person2("lilei");
  print(identical(p3, p4));
  print(identical(p4, p5));

  // dynamic/ Object
}

class Person1 {
  late String name;

  Person1(String name) {
    this.name = name;
  }
}

class Person2 {
  final String name;

  const Person2(this.name);
}

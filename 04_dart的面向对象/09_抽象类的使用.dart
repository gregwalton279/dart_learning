void main(List<String> args) {
  // 注意二：抽象类不能被实例化
  // final s = Shape();

  // 但 抽象类可以使用工厂构造函数来完成初始化
  final map = Map(); //  external factory Map();
}

// 抽象类里可以没有方法的实现
abstract class Shape {
  // 抽象方法
  double getArea();

  String getInfo() {
    return '这是一个抽象类';
  }

  // factory Shape() {
  //   return Circle(10);
  // }
}

// 注意一：继承自抽象类后，必须实现抽象类中的抽象方法
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}

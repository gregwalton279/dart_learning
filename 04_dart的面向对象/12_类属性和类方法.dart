void main(List<String> args) {
  Person.name = '李四';
  Person.say();
}

class Person {
  // 成员变量
  String? sex;

  // 静态属性（类属性）
  static String name = '张三';

  // 静态方法（类方法）
  static void say() {
    print('我是静态方法');
  }

  // 对象方法
  void run() {
    print('我是实例方法');
  }
}

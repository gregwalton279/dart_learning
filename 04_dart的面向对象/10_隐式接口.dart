void main(List<String> args) {}

// dart 定义接口 （其它语言 interface/protocol）
// 默认所有的类都是隐式接口
// dart 只支持单继承，所以接口不能多继承
// 当将一个类当做接口使用时，必须实现这个接口中的所有方法
// 接口不能有实例变量

class Runner {
  void run() {
    print('run');
  }
}

class Flyer {
  void fly() {
    print('fly');
  }
}

class Animal {
  void eating() {
    print('eating');
  }
}

// extends继承可以调用super；implements实现不能调用super,并且要重写所有方法
class Bird extends Animal implements Runner, Flyer {
  @override
  void fly() {}

  @override
  void run() {
    // super.run(); // 报错
  }

  @override
  eating() {
    super.eating();
  }
}

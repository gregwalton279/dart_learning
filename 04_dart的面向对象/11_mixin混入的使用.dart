/**
 *  混入在定义类的时候使用mixin关键字，而不是class。
 *  在类定义中，使用with关键字，跟extends关键字类似。
 */
void main(List<String> args) {
  superman s1 = superman();
  s1.run();
}

mixin Runner {
  void run() {
    print('run');
  }
}

mixin Flyer {
  void fly() {
    print('fly');
  }
}

mixin Animal {
  void eating() {
    print('eating');
  }

  void run() {
    print('Animal run');
  }
}

class superman with Runner, Flyer, Animal {}

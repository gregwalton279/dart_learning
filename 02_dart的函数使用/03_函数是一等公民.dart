// 面向对象的语言：类class是第一公民（java、oc）
// dart：函数是第一公民
// 意味着函数可以作为参数传递。

void main(List<String> args) {
  // 函数可以作为另外一个函数的参数
  test(bar);

  // 匿名函数
  test(() {
    print("匿名函数被调用");
  });

  // 箭头函数：条件，函数体只有一行代码
  test(() => print("箭头函数被调用"));

  test2(demo());
  test3(demo());
}

// 函数可以作为另外一个函数的参数
void test(Function foo) {
  foo();
}

void bar() {
  print("function bar");
}

// 函数需要一个返回值, 函数签名
// 1. 直接
void test2(int aaa(int num1, String name)) {
  aaa(20, 'jake');
  print(aaa(20, 'jake'));
}

// 2. typedef
typedef Calculate = int Function(int num1, String name);

void test3(Calculate calc) {
  print(calc(50, 'jake'));
}

// 函数作为返回值
Calculate demo() {
  return (num1, num2) {
    return num1;
  };
}

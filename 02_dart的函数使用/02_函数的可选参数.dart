void main(List<String> args) {
  sayHello("why");

  sayHello2("name", 8, 18);

  sayHello3("name", age: 18, height: 1.77);
}

// 必选参数： 必须传
void sayHello(String name) {
  print(name);
}

// dart中没有函数的重载
// 可选参数： 1.位置可选参数 - 2.命名可选参数
// 注意：只有可选函数的参数可以有默认值

// 位置可选参数： [int age， double height]
// 实参和形参在进行匹配时，是根据位置匹配
void sayHello2(String name, [int age = 18, double? height]) {}

// 命名可选参数
void sayHello3(String name, {required int age, double height = 1.7}) {}

void main(List<String> args) {
  var p = Person("name");
  print(p);
}

// 初始化赋值
class Person {
  final String name;
  // final int age=18;
  final int age;
  final String groupByAge;
  final String address;

  // Person(this.name, this.age);
  // Person(String name, int age)
  //     : this.name = name,
  //       this.age = age;

  // 初始化列表
  // 初始化列表中不能使用this
  Person(this.name, {int? age, String? paramAddress})
      : this.age = age ?? 18,
        this.groupByAge = (age ?? 18) > 17 ? "成年" : "未成年",
        this.address = paramAddress ?? "" {
    // this.age = 19; // 报错
  }
}

/**
 * 普通的构造函数，会默认返回实例对象
 * 
 * 工厂构造函数需要自己手动返回实例对象
 */

void main(List<String> args) {
  final p1 = Person.withAge(18);
  final p2 = Person.withAge(18);

  print(identical(p1, p2));
}

// 工厂构造函数最大的特点： 可以手动的返回一个对象

class Person {
  final String? name;
  final int? age;

  static final Map<String, Person> _nameCache = {};
  static final Map<int, Person> _ageCache = {};

  factory Person.withName(String name) {
    if (_nameCache.containsKey(name)) {
      return _nameCache[name]!;
    } else {
      final person = Person(name, 18);
      _nameCache[name] = person;
      return person;
    }
  }

  factory Person.withAge(int age) {
    if (_ageCache.containsKey(age)) {
      return _ageCache[age]!;
    } else {
      final person = Person("default", age);
      _ageCache[age] = person;
      return person;
    }
  }

  Person(this.name, this.age);
}

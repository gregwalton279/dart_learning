void main(List<String> args) {
  final p = Person();

  // 直接访问属性
  p._name = "why";
  print(p.getName);

  // setter
  p.setName = "kobe";

  print(p.getName);

  // getter
  print(p.getAddress);
}

class Person {
  // 监听属性的修改
  String? _name;
  String? _address;

  // setter
  set setName(String name) => _name = name;
  set setAddress(String address) => _address = address;

  // getter
  String get getName => _name!;
  String get getAddress => _address ?? "未设置地址";
}

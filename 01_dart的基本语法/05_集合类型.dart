void main(List<String> args) {
  // 1. 列表 List: [];
  // 1.1 类型推导定义
  var names = ["abc", 'cba', 'nba', 'abc'];
  print("$names ${names.runtimeType}");

  // 1.2 明确指定类型
  List<int> numbers = [1, 3, 5, 9];
  print("$numbers ${numbers.runtimeType}");

  // 2. 集合Set: {}; 主要用于List去重复
  // Set与List的两个不同点：1. Set是无序的；2. Set里元素是不能重复的

  var movies = {"hot dog", "bad ass"};
  Set<int> numberSet = {1, 3, 2, 5};

  Set.from(names).toList();
  print(names);

  // 3. 映射Map
  var infoMap1 = {"name": "why", "age": 19};
  Map<String, Object> infoMap2 = {"city": "beijing", "code": 1000};

  // 4. 集合的常见操作 (List 和 Set)
  // 4.1 获取长度 .length

  // 4.2 增add /删 remove/ 包含contains 操作
  // List根据index删除
  numbers.removeAt(2);

  // 5. Map的操作
  // 由于它有key和value，因此无论读取值还是操作，都要明确是基于key还是基于value，或是基于key/value的
  // 5.1 根据key获取value
  print(infoMap1["name"]);

  // 5.2 获取所有entries
  print("${infoMap1.entries}  ${infoMap1.entries.runtimeType}");

  // 5.3 获取所有的keys
  print("${infoMap1.keys} ");

  // 5.4 获取所有的values
  // 5.5 判断是否包含某个key（containsKey）或者value（containsValue）
  // 5.6 根据key删除元素
  infoMap1.remove("name");
}

void main(List<String> args) {
  var name = "测试";

  // ??= :
  // 如果name为null，则赋值test。否则不执行。
  name ??= "test";
  print(name);

  // ?? :
  // ?? : 如果num1为null，则返回20，否则返回num1。
  var num1 = 10;
  var temp = num1 ?? 20;
  print(temp);
}

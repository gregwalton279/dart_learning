// 枚举: enum
// 最大的好处： 类型安全

void main(List<String> args) {
  final color = Color.red;
  switch (color) {
    case Color.red:
      print('red');
      break;
    case Color.green:
      print('green');
      break;
    case Color.blue:
      print('blue');
      break;
  }

  print(Color.values);
  print(Color.red.index);
}

enum Color { red, green, blue }

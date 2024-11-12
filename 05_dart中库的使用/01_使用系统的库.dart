/** 
 * 核心库使用不需要 import
 */

import 'dart:io';
import 'dart:isolate';
import 'dart:async';
import 'dart:math';

// 系统的库: import 'dart:xxx'

void main(List<String> args) {
  final num1 = 20;
  final num2 = 30;
  print(min(num1, num2));
}

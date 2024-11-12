/**
 * 补充一： 可以使用 as 关键字，为库起别名
 * 补充二： 默认情况下导入一个库时，导入这个库中所有的内容
 *  * 可以使用 show 关键字，只导入需要的内容
 *  * 可以使用 hide 关键字，隐藏不需要的内容
 * 补充三：公共的dart文件抽取： export
 * 补充四：_下划线，表示私有内容，外部不能访问
 */

import 'utils/util.dart';
import 'utils/math_utils.dart';
import 'utils/math_utils.dart' as utils;
import 'utils/math_utils.dart' hide mul;

void main(List<String> args) {
  print(utils.sum(20, 50));
  // print(_div(10, 2));  // 不能访问私有内容
}

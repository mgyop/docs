## 导入包的格式
```
import 'dart:xxx'; 引入Dart标准库
import 'xxx/xxx.dart';引入绝对路径的Dart文件
import 'package:xxx/xxx.dart'; 引入Pub仓库pub.dev(或者pub.flutter-io.cn)中的第三方库
import 'package:project/xxx/xxx.dart';引入自定义的dart文件
import 'xxx' show compute1，compute2 只导入compute1，compute2
import 'xxx' hide compute3 除了compute都引入
import 'xxx' as compute4 将库重命名，当有名字冲突时
library compute5; 定义库名称
part of compute6; 表示文件属于某个库
```

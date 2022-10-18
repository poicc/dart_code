import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FileWidget extends StatefulWidget {
  const FileWidget({Key? key}) : super(key: key);

  @override
  State<FileWidget> createState() => _FileWidgetState();
}

class _FileWidgetState extends State<FileWidget> {
  // 创建文件目录
  Future<File> get _createFile async {
    final directory = await getApplicationDocumentsDirectory();
    // final directory1 = await getTemporaryDirectory();
    // 只能在安卓真机上使用
    final directory1 = await getExternalStorageDirectory();
    final path = directory.path;
    final path1 = directory1!.path;
    print('path--->$path');
    print('path--->$path1');
    return File('$path1/message.txt');

    // final path =
    //     '/Users/chenrongqi/soft/flutter/dev/dart_code/flutter_demo/lib';
    return File('$path/message.txt');
  }

  // 异步读取文件
  Future<String> readContent() async {
    try {
      final file = await _createFile;
      String content = await file.readAsString();
      return content;
    } catch (e) {
      return 'no content';
    }
  }

  // 写文件
  Future<File> writeContent(String content) async {
    final file = await _createFile;
    return file.writeAsString(content);
  }

  String info = 'hello flutter';

  @override
  void initState() {
    super.initState();
    // _createFile.then((value) {
    //   print(value);
    // });
    // 调用写文件的方法
    writeContent('Flutter 跨平台开发技术');
    // 异步调用读文件
    readContent().then((value) {
      print(value);
      setState(() {
        info = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter file demo'),
      ),
      body: Center(
        child: Text(info),
      ),
    );
  }
}

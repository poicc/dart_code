import 'dart:io';

void main() async{
 File file = File('test.txt');

 // 判断文件是否存在
 if(await file.exists()){
   print("文件存在");
 }else{
   print("文件不存在");
 }

 // 复制文件
 await file.copy("test-1.txt");

 // 修改文件名。当传入不同路径时，可用来移动文件
 await file.rename("test-2.txt");
 
 // 获取文件 size
 print(await file.length());
}
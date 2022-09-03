import 'dart:io';
import 'dart:convert';

void main() {
 startTCPServer();
}

// TCP 服务端
void startTCPServer() async{
 ServerSocket serverSocket = await ServerSocket.bind(InternetAddress.loopbackIPv4, 8081);

 //遍历所有连接到服务器的套接字
 await for(Socket socket in serverSocket) {
   // 先将字节流以utf-8进行解码
   socket.cast<List<int>>().transform(utf8.decoder).listen((data) {
     print("from ${socket.remoteAddress.address} data:" + data);
     socket.add(utf8.encode('hello client!'));
   });
 }
}
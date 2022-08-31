import 'dart:convert';
import 'dart:io';

void main() {
 startTCPClient();
}

// TCP 客户端
void startTCPClient() async {
 //连接服务器的8081端口
 Socket socket = await Socket.connect('127.0.0.1', 8081);
 socket.write('Hello, Server!');
 socket.cast<List<int>>().transform(utf8.decoder).listen(print);
}
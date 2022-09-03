import 'dart:io';

void main() async {
 WebSocket socket = await WebSocket.connect('ws://127.0.0.1:8083/ws');
 socket.add('Hello, World!');

 await for (var data in socket) {
   print("from Server: $data");

   // 关闭连接
   socket.close();
 }
}
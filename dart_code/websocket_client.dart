import 'dart:io';

void main() async {
 HttpServer server = await HttpServer.bind(InternetAddress.loopbackIPv4, 8083);
 await for (HttpRequest req in server) {
   if (req.uri.path == '/ws') {
     // 将一个HttpRequest转为WebSocket连接
     WebSocket socket = await WebSocketTransformer.upgrade(req);
     socket.listen((data) {
      //  print("from IP ${req.connectionInfo.remoteAddress.address}:${data}");
       socket.add("WebSocket Server:already received!");
     });
   }
 }
}
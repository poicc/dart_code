import 'dart:convert';
import 'dart:io';

void main() {
 HttpClient client = HttpClient();

 client.getUrl(Uri.parse("http://localhost:8080/greet/zhangsan"))
   .then((HttpClientRequest request) {
     // 设置请求头
     request.headers.add(HttpHeaders.userAgentHeader,
     "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36");
     return request.close();
   })
   .then((HttpClientResponse response) {
     // 处理响应
     response.transform(utf8.decoder).listen((contents) {
       print(contents);
     });
   });
}
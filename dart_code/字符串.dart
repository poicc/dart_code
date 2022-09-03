void main() {
  var multiLine1 = """你可以像这样，创建一个
  包含了多行的字符串内容
""";

  var multiLine2 = '''你可以像这样，创建一个
  包含了多行的字符串内容
''';

  // r用来创建原始字符 后面的字符串不用转义
  var path = r'D:\dev';

  // 拼接表达式时 不能省略花括号
  var str1 = 'link';
  var str2 = 'click ${str1.toUpperCase()}';
}

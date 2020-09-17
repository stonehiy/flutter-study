void main() {
  print("hello dart");
  var str = "你好dart";
  print("str = " + str);
  String str1 = "str1";
  print("str1 = " + str1);
  try {
    str = 1 as String;
  } catch (e) {
    print(e);
  }
  print("str = " + str);

  const PI = 3.1415;
  final PI1 = 3.1415;
  print(PI);
  print(PI1);

  String s = '''  
  a b c
  e f g
  adfadsf asdfasdf  
  ''';
  print(s);

  bool a = true;
  int b = 1;
  double d = 2.0;

}



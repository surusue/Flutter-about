int? no = 10;

main() {
  bool? data = no?.isEven;
  no = null;
  Object? obj = no;
  no = 10;

  String data1 = 'hello';
  String data2 = "kkang";
  String data3 = '''
    hello
    world
  ''';
  String data4 = """
    hello
    world
  """;
  String myFun() {
    return 'kim';
  }

  print(data1 == data2);
  print('no : $no, name : $data2, 10 + 20 : ${10 + 20}, myFun() : ${myFun()}');

  // 다트는 int, double 이 모두 객체라 형 변환이 자동으로 x
  int n1 = 10;
  double d1 = 10.0;
  String s1 = '10';

  double d2 = n1.toDouble();
  int n2 = d1.toInt();
  String s2 = n1.toString();
  int n3 = int.parse(s1);
}

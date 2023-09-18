int? a1 = 20;
int? some(arg) {
  if (arg == 10) {
    return 0;
  } else {
    return null;
  }
}

String? str = "hello";

main() {
  // 어떤 변수가 널인지 점검할 때는 ! 연산자 사용
  a1!;
  a1 = null;
  // a1!; 런타임 오류

  int a = some(10)!;
  print('a : $a');
  // int b = some(20)!; 널 반환 하므로 런 타임 오류

  // str.isEmpty; 오류
  int? no1 = 10;
  bool? result1 = no1?.isEven; // no1이 널일 때 null반환
  print('result 1: $result1');

  no1 = null;
  bool? result2 = no1?.isEven;
  print('result 2: $result2');

  List<int>? list = [10, 20, 30];
  print('list[0] : ${list?[0]}');
  list = null;
  print('list[0] : ${list?[0]}');

  // 널 허용 변수에 널이 아닌 값만 대입하고 싶다면 ??=
  // ??= 연산자는 대입 값이 널이 아닐 때만 대입한다
  int? data3;
  data3 ??= 10;
  print('data3 : $data3');
  data3 ??= null;
  print('data3 : $data3');

  // 널 허용 변수가 널일 때 대체할 값을 지정하고 싶다면 ??
  String? data4 = 'hello';
  String result = data4 ?? 'world';
  print('result : $result');

  data4 = null;
  result = data4 ?? 'world';
  print('result : $result');
}

const String data1 = 'Hello'; // const는 초깃값 필수'

class User {
  static const String data2 = 'hello';

  void some() {
    const String data3 = 'hello';

    /*
    data1 = 'world';
    data2 = 'world';
    data3 = 'world';
    모두 오류
    */
  }
}

class MyClass {
  final int no1; // 이후에 값을 대입하므로 초깃값 없어도 오류 안 남
  MyClass(this.no1);

  void some() {
    final no3;
    no3 = 10;
    // no3 = 20; 값은 못 바꿔서 오류
  }
}

main() {
  String s1 = 'hello';
  const String s2 = 'world';
  final String s3 = 'helloworld';

  String s4 = '$s1, $s2';
  const String s5 = '$s2';
  // const String s6 = '$s1, $s2, $s3'; 오류
  final String s7 = '$s1, $s2, $s3';
}

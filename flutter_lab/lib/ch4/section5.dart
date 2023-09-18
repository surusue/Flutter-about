// 널 불허 지역
int no1 = 10;
int? no2 = 20; // 널 허용 변수 선언
// int? 가 int의 상위 타입 따라서 a1 = a2; 오류 a2 = a1; 가능
// int a3; 불허 지역에서는 초기화 안 해도 오류
int? no4;
late int no6; // late는 초기화를 미룸

testFun() {
  // 널 불허 지역 아님
  // no1 = null; 오류
  no2 = null;
  int no5; // 단 사용 전에는 반드시 초기화
}

// String str1 = null; 오류
String? str2 = null;

class User {
  // 널 불허 지역
}

// User user1 = null; 오류
User? user2 = null;

main() {
  //널 불허 지역 아님
  var a1 = 10; // int
  var a2 = null; // dynamic
  var a3; // dynamic
  // var? a4 = null; 오류 var 뒤에는 물음표를 붙일 수 없음

  a1 = 20;
  // a1 = null; 오류

  a2 = 20;
  a2 = "hello";
  a2 = null;

  a3 = 20;
  a3 = "hello";
  a3 = null;

  var a4 = no1; // int 로 결정
  var a5 = no4; // int? 로 결정

  a4 = 20;
  // a4 = null; 오류
  a5 = 20;
  // a5 = "helllo"; int? 타입에 문자열 대입으로 오류
  a5 = null;

  dynamic b1 = 10;
  dynamic b2;
  dynamic? b3; // dynamic 은 상관 없다

  b1 = null;
  b2 = null;
  b3 = null;

  // 명시적 형 변환
  no1 = no2 as int;
  print("no1: $no1, no2: $no2");

  // 초기화 미루기
  no6 = 10;
  print('no6: ${no6 + 10}');
}

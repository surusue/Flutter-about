// 함수 선언 위치 = 톱 레벨, 클래스 멤버, 다른 함수 내 가능
// 오버로딩 제공 하지 않음
// 함수 매개변수 var로 선언 == dynamic 타입 == 생략
// 반환 값이 없으면 void f()

dynamic some1() {
  return 10;
}

some2() {
  //void도 생략하면 dynamic 으로 모두 반환 가능
  return 10;
}

some3() {}

void printUser1() {
  print('hello world');
}

// 본문이 한 줄이면 중괄호 대신 화살표로 선언 가능
void printUser2() => print('hello world');

main() {
  print('some1 result : ${some1()}');
  print('some2 result : ${some2()}');
  print('some3 result : ${some3()}');

  printUser1();
  printUser2();
}

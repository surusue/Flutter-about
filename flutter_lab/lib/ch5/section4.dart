// 다트에서는 모든 데이터가 객체이므로 함수도 객체
// 함수를 대입할 수 있는 객체를 '함수 타입' Function

int plus(int no) {
  return no + 10;
}

int multiply(int no) {
  return no * 10;
}

Function testFun(Function argFun) {
  print('argFun : ${argFun(20)}');
  return multiply;
}

// 특정한 형태로만 한정하고 싶다면
some(int f(int a)) {
  f(30);
}

// 익명 함수
fun1(arg) {
  return 10;
}

// 이름이 없으므로 독자적으로 사용 x Function 타입에 대입할 함수를 정의할 때 사용
Function fun2 = (arg) {
  return 10;
};

main(List<String> args) {
  var result = testFun(plus);
  print('result : ${result(20)}');

  some((int a) {
    return a + 20;
  });
}

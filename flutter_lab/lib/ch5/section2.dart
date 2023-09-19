/* 옵셔널 - 호출 시 데이터를 전달하지 않을 수도 있음
1) 명명된 매개변수 -> section2 은 이걸 다룬다
2) 옵셔널 위치 매개변수
*/
void some1(int a, String b, bool c) {}
void some2({String? data1}) {
  //{} 은 무조건 마지막에, 한 번만
  print('data1:$data1');

  some2(data1: 'world');
}

void some3(int data1, {String? data2, bool? data3}) {}

/*
some3(); 오류
some3(10); 성공
some3(10, 'hello', true); 오류
some3(10, data2: 'hello', data3: true); 성공
some3(data3: true, 10, data2: 'hello'); 성공
*/

String myFun({String data = 'hello'}) {
  // 기본 인자를 설정 가능
  // 함수 호출 때 데이터를 전달받지 못하면 대입하는 기본값
  return data;
}

someFun({required int arg1}) {
  // required는 명명된 매개변수지만 반드시 값을 전달받도록 강제
  print('someFun().. arg1 : $arg1');
}

main() {
  // some1(); 오류
  // some1('hello', true, 10); 오류
  some1(10, 'hello', true);
  print('myFun() result : ${myFun()}');
  print('myFun(world) result : ${myFun(data: "world")}');
  // someFun(); 오류
  someFun(arg1: 10);
}

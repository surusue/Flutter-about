/* 옵셔널 - 호출 시 데이터를 전달하지 않을 수도 있음
1) 명명된 매개변수 
2) 옵셔널 위치 매개변수 -> section3 은 이걸 다룬다
*/

// 1)과 다르게 2)는 선언된 순서에 맞게 호출해야 한다
// 1)과 다르게 2)는 이름을 생략해도 된다

void some(int arg1, [String arg2 = 'hello', bool arg3 = false]) {}

main() {
  // some(); 오류
  some(10);
  // some(10, arg2: 'world', arg3: true); 오류
  some(10, 'world', true);
  // some(10, true, 'world'); 오류
  some(10, 'world');
  // some(10, true); 오류
}

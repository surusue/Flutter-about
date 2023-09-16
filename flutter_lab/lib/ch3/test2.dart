import 'test1.dart';
// * 별칭 사용을 '위해 test1.dart' as Test1; 로 선언시
// ** 'test1.dart' show no1; 은 특정 요소만 불러와서
// *** hide는 반대

main() {
  no1 = 20; // * Test1.no1 = 30; 해야 오류가 안 남
  // ** no1만 다룰 수 있고 나머지는 오류 남
  // _no2 = 30; 오류

  sayHello1();
  // _sayHello2(); 오류

  User1 user1 = User1();
  // _User2 user2 = _User2(); 오류

  user1.name = 'kkang';
  // user1._address = 'busan'; 오류
}

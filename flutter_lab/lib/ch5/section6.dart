class User {
  void some() {
    print("User...some()...");
  }
}

class User2 {
  String? name;
  int? age;

  some() {
    print('name: $name, age: $age');
  }
}

main() {
  int a = 8;
  print('a / 5 = ${a / 5}'); // 결과를 실수로
  print('a ~/ 5 = ${a ~/ 5}'); // 결과를 정수로

  Object obj = User();
  if (obj is User) {
    // is는 타입을 확인해 bool로 알려줌, 자동 형 변환
    obj.some();
  }

  Object obj1 = User();
  (obj1 as User).some(); // as는 타입을 바꿔줌, 명시적 형 변환

  var user = User2();
  user.name = 'kkang';
  user.age = 10;
  user.some();

  // 여러 번 접근시 캐스케이드 연산자 사용하면 편리
  User2()
    ..name = 'yun'
    ..age = 24
    ..some();
}

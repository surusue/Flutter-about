// _를 붙이면 외부에서 사용 x

int no1 = 10;
int _no2 = 20;

void sayHello1() {
  print('hello, $no1');
}

void _sayHello2() {}

class User1 {
  String? name;
  String _address = 'seoul';
}

class _User2 {}

main() {
  no1 = 20;
  _no2 = 30;

  sayHello1();
  _sayHello2();

  User1 user1 = User1();
  _User2 user2 = _User2();

  user1.name = 'kkang';
  user1._address = 'busan';
}

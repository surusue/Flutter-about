// 추상 클래스 - 실행문이 없고 객체 생성이 불가능
abstract class User {
  void some();
}

class Customer extends User {
  @override
  void some() {}
}

// 암시적 인터페이스 : 다트는 implements만 지원하기 때문
// implements를 추가해 구현하려면 모든 멤버의 재정의가 필요
//하나의 클래스에 여러 인터페이스를 지정해서 선언할 수도 있다
class User2 {
  int no;
  String name;

  User2(this.no, this.name);
  String greet(String who) => 'Hello, $who. I am $name. no is $no';
}

class MySubClass implements User2 {
  int no = 10;
  String name = 'kim';
  @override
  String greet(String who) {
    return 'hello';
  }
}

//구현 클래스의 객체는 인터페이스 타입으로 선언할 수 있다
main() {
  User2 user = MySubClass();
  print('${user.greet('lee')}');
}

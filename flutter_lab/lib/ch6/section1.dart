class User {
  String name = 'kkang';
  int age = 10;

  void sayHello() {
    print('Hello $name, age: $age');
  }
}

class MyClass {
  String data1 = 'hello'; // 객체 멤버
  static String data2 = 'hello'; //클래스 멤버

  myFun1() {
    print('myFun1 call....');
  }

  static myFun2() {
    print('myFun2 call....');
  }
}

main() {
  User user1 = new User();
  user1.sayHello();
  user1.name = 'kim';
  user1.age = 20;

  // 객체 멤버는 꼭 객체를 생성하고 접근해야 함
  // MyClass.data1 = 'world'; 오류
  MyClass obj = MyClass();
  obj.data1 = 'world';

  MyClass.data2 = 'world';
  // obj.data2 = 'world'; 오류
}
